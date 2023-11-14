# Watch Japanese television in mpv or vlc
>TV Asahi
https://mov3.co/tvasahi/
>TV Tokyo
https://mov3.co/tvtokyo/
>Fuji TV
https://fujitv4.mov3.co/hls/fujitv.m3u8
>Hokkaido News 24
https://www.youtube-nocookie.com/embed/xWPD8KDHUH8
>JapaNews24
https://youtu.be/coYw-eVU0Ks
>NHK G
https://nhk4.mov3.co/hls/nhk.m3u8
>NTV
https://ntv4.mov3.co/hls/ntv.m3u8
>TBS
https://tbs3.mov3.co/hls/tbs.m3u8
>Tokyo MX
https://mov3.co/tokyomx/
>unlisted WNI stream running nonstop for the last 3 years
https://youtu.be/zAdWzjab1B8
>TBS's The Time and ラヴィット！
https://www.twitch.tv/popout/akb48_taiwan_clubs04
https://www.twitch.tv/popout/akb48_taiwan_clubs05
>live AU Pay Market stream
https://live.check.tv/live1/index.m3u8
>anon's site of links to WNI and AU Pay Market stream VODs, sortable by date or caster
https://weathernews.duckdns.org/ or https://wn.ydns.eu/
http://sennajlwmhtxixl2qgwlvuaongxly6flffuz4roemsabjshlnnxdbbid.onion/
>FujiTV vods
https://fod.fujitv.co.jp/title/g9nu/g9nu110001/ -- 女子バレー
https://fod.fujitv.co.jp/genre/variety/H00047 --  アナウンサー
>Tver
https://tver.jp/
Run mpv on any /episodes/ url like this https://tver.jp/episodes/epz5ohem6r
!!! info
	Use mpv's `--no-initial-audio-sync` option if you get an error about incorrect timestamps while opening a mov3 stream.
!!! info
    Sometimes my ISP fucks with the DNS caching of youtube stream servers or something and I end up getting choppy playback with long pauses on the WNL stream. The errors look like this:
    `[ffmpeg] tls: Error in the pull function.`
    `[ffmpeg] tls: IO error: Connection reset by peer`
    `(Buffering) AV: 01:55:25 / 01:55:26 (100%) A-V: -0.000 Cache: 0.0s`
    `[ffmpeg] https: Cannot reuse HTTP connection for different host: rr2---sn-p5qddn7r.googlevideo.com:-1 != rr1---sn-p5qlsn7s.googlevideo.com/...`
    `[ffmpeg/demuxer] hls: keepalive request failed for 'https://rr1---sn-p5qlsn7s.googlevideo.com/videoplayback/id/tzpRnl9trsE.1/itag/234/so/sgoap/gir%3Dyes%3Bitag%3D140/rqh/1/hls_chunk_host/rr1---sn-p5qlsn7s.googlevideo.com/playlist_duration/900/manifest_duration/900/vprv/1/99953638/sparams/expire,ei,ip,id,itag,source,requiressl,ratebypass,live,goi,sgoap,rqh,playlist_duration,manifest_duration,vprv,playlist_host,initcwndbps,mh,mm,mn,ms,mv,mvi,pl/lsig/AM8Gb2swRgIhAMQxbLTW5LFb5jPqZD3jMcVrmf2qHU3wooQg6tsFlQCnAiEA_9G50skBR2QWsrTTzz7k3uGBWP2MmHxft' when opening url, retrying with new connection`

    Fix: run mpv with this option: `--script-opts=ytdl_hook-use_manifests=yes`. Not a single error message appears with this option. The mpv man-page says this option is set to "no" by default for performance reasons, but in this case, it's necessary.