#!/bin/sh
program="${0##*/}"
renget_dir=./archive
renget_source=chan
renget_format=raw
renget_savelink_filename=index.txt
renget_linkonly=
renget_verbose=
renget_check_exist=
renget_blacklist="/v32rervft4fewr3c235b329v32v428nvcc2sf2342398hcn3299jj39sdfoqkm4l3h4bvv40912n/v32rervft4fewr3c235b329b5798nvcc2sf2342398hcn3299jj39sdfoqkm4l3h4bvv40912n/oicbi3un3v987v3489nr46xxn9032n023vh03b79184b3guyffuhkjm97585m111n890vn34b7c032f7fk88fb7878zz7cv6c634/2k50235259em523g32342fwersdr23vrewxerwvvr0vl-0342856a78s1xcarj29103n4v0_/2k50235259em523g311232342fw23123ersdr23vrewxerwvvr0vl-0342856a78s1xcarj29103n4v0_/"
curl_silent=-s
renget_boards="/3/a/aco/adv/an/b/bant/biz/c/cgl/ck/cm/co/d/diy/e/f/fa/fit/g/gd/gif/h/hc/his/hm/hr/i/ic/int/jp/k/lgbt/lit/m/mlp/mu/n/news/o/out/p/po/pol/pw/qa/qst/r/r9k/s/s4s/sci/soc/sp/t/tg/toy/trash/trv/tv/u/v/vg/vip/vm/vmg/vp/vr/vrpg/vst/vt/w/wg/wsg/wsr/x/xs/y/"

#bigboards: d, e, h, vg, vt, g, trash

p(){
    printf "%s\n" "$*"
}

die(){
    echo "$@" 1>&2
    exit 1
}

fail(){
    [ "$?" != "0" ]
}

inf(){
    [ "$renget_verbose" != "" ] && p "$1" 1>&2
}

usage(){
    p "usage: $program [options...] <board or link>..."
    p "    -h          display this help"
    p "    -d <dir>    specify save directory (default: $renget_dir)"
    p "    -s <src>    specify link source (default: $renget_source)"
    p "    -f <fmt>    specify save format (default: $renget_format)"
    p "    -r          recursive download"
    p "    -l <file>   output detected links only to <file>  (default: $renget_savelink_filename)"
    p "    -n          do not download files"
    p "    -i          don't download if the rentry already exists"
    p "    -v          output more info"
    p "    -e          end of option"
}

get(){
    curl $curl_silent "$1"
}

format_text(){
    text=$(cat - | sed -e "s/&#039;/'/g" -e 's/&quot;/"/g' -e 's/&gt;/>/g' -e 's/&lt;/</g' -e 's/&amp;/\&/g' -e 's/<br>/\n/g'  -e 's/<[^>]*>//g')
    p "$text"
}

filter_links(){
    grep -o 'rentry\.org/[-_0-9A-Za-z]*\|rentry\.co/[-_0-9A-Za-z]*' | awk -F/ '{print $2}'
}

get_ids_from_chan()
{
    board="$1"
    inf "getting ids from board $board..."
    json=$(get "https://a.4cdn.org/$board/catalog.json")
    fail && p "download board json failed" && exit 1
    p "$json" | jq -r '.[].threads[].com' | format_text | filter_links
}

get_ids_from_rentry()
{
    id="$1"
    inf "getting ids from rentry $id..."
    md=$(get "https://rentry.org/$id/raw")
    fail && p "download rentry md failed" && exit 1
    p "$md" | grep -q '<title>Error</title>' && inf "download rentry md $id failed"
    p "$md" | filter_links
}

get_ids_from_file()
{
    file="$1"
    inf "getting ids from file $file..."
    md=$(cat "$file")
    p "$md" | filter_links
}

get_ids()
{
    case "$1" in
    chan) get_ids_from_chan "$2";;
    rentry) get_ids_from_rentry "$2";;
    *) die "invalid mode";;
    esac
}

download_id()
{
    id="$1"
    if echo "$renget_blacklist" | grep -Fq "/$id/"; then
      p "$id is in blacklist"
      return 1
    fi
    
    inf "getting rentry $id..."
    md=$(get "https://rentry.org/$id/raw")
    fail && p "download rentry md failed" && exit 1
    p "$md" | grep -q '<title>Error</title>' && p "download rentry md $id failed" && return 1
    p "$md" > "$id.md"
}

while getopts "d:s:l:f:rinveh" OPTION; do
    case "$OPTION" in
    d) renget_dir="$OPTARG";;
    s) renget_source="$OPTARG";;
    l) renget_savelink_filename="$OPTARG";;
    f) renget_format="$OPTARG";;
    r) renget_recursive=true;;
    i) renget_check_exist=true;;
    n) renget_linkonly=true;;
    v) renget_verbose=true
       curl_silent='';;
    e) break;;
    h) usage
       die;;
    *) usage
       die;;
    esac
done
shift $((OPTIND-1))

mkdir -p "$renget_dir"
cd "$renget_dir"
:> "downloaded.txt"
:> "tmp-$renget_savelink_filename"
for i in "$@"; do
  get_ids "$renget_source" "$i" >> "tmp-$renget_savelink_filename"
done
cat "tmp-$renget_savelink_filename" | sort | uniq -i > "$renget_savelink_filename"
rm "tmp-$renget_savelink_filename"
p "get links complete, $(wc -l "$renget_savelink_filename" | awk '{print $1}') links detected"
[ "$renget_linkonly" = "true" ] && exit 0

for id in $(cat "$renget_savelink_filename"); do
    if [ "$renget_check_exist" = "true" ] && [ -f "$id.md" ]; then
        inf "$id already exists"
        continue
    fi
    
    p "downloading $id..."
    download_id "$id"
    p "$id" >> "downloaded.txt"
done

[ "$renget_recursive" != "true" ] && exit 0

flag="true"

while [ "$flag" = "true" ]; do
    flag="false"
    
    p "starting recursive download..."
    :> "tmp-$renget_savelink_filename"
    for file in *.md; do
        get_ids_from_file "$file" >> "tmp-$renget_savelink_filename"
    done
    cat "tmp-$renget_savelink_filename" | sort | uniq -i | grep . > "rec-$renget_savelink_filename"
    rm "tmp-$renget_savelink_filename"
    p "get links complete, $(wc -l "rec-$renget_savelink_filename" | awk '{print $1}') links detected"
    
    for id in $(cat "rec-$renget_savelink_filename"); do
        if [ "$renget_check_exist" = "true" ] && [ -f "$id.md" ]; then
            inf "$id already exists"
            continue
        fi
        if grep -q "^$id\$" "downloaded.txt"; then
            inf "$id already exists"
            continue
        fi
        
        p "downloading $id..."
        flag="true"
        download_id "$id"
        p "$id" >> "downloaded.txt"
    done
done

rm *.txt
