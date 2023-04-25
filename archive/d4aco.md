```
// ==UserScript==
// @name         Various e621 tweaks
// @namespace    .
// @version      0.1
// @description  various stuff
// @author       
// @match        https://e621.net/*
// @grant        none
// ==/UserScript==


// maximize the tiles to the space on screen
jQuery('.content-post').css('width', 'calc(98% - 185px)').css('margin-left', '-10px').css('margin-right', '-40px');



//fire after the page finished loading
(function() {


	// give posts with special tags a border
	// its either a single tag or a regex (starting and ending with / )
	// 'or' joins can be done with a regex and 'and' joins with a ~ between the tags or regex 
    'use strict';
	var h_list = "aaros_(artist) oouna rakisha kirydos axis_(character) nirimer rimefox lizardlars tanathy yuras12 tochka kittentits theowlette spinal22 feretta slate~dragon sabretoothed_ermine~bdsm scritt endium smooshkin talash ecmajor kyma the_secret_cave sonsasu korichi vader-san neodokuro~dragon"+" "+
	"alien_(franchise) mass_effect feral~lingerie /(dragon|lizard|charr|scalie|shark)/~/(bound|mostly_nude|seductive)/ /(dragon|lizard|charr|scalie|shark)/~/(.*suit|spread_.*|raised_(tail|leg)|teasing)/ /(dragon|lizard|charr|scalie|shark)/~/(presenting_hindquarters|bdsm|corset|teasing|.*_penis|shackles)/  bdsm~body_harness~bound bdsm~underwear~buttplug    trimmed_this_down edit_to_your_likings ";
    function mark(e) {
        var b = e.css("border", "3px dotted orange").parent().parent().find("span.post-score").css("background-color", "orange");
        if(b.attr("title")) { b.attr("title", e.tags + "\n" + b.attr("title"));}else{b.attr("title", e.tags);}
    }
    function highlight() {
        var a = jQuery("img.preview"),
            d=function(e,c){return e.match(/^\/.*\/$/)?c.match(new RegExp(e.slice(1,-1),"g")):e==c;};
        jQuery(h_list.split(" ")).each(function() {
            var e = jQuery("#tags").val();
            if (-1 == this.indexOf(e) || e.length < 1){
                if (-1 != this.indexOf("~")) {
                    var b = jQuery(this.split("~"));
                    a.each(function() {
                        var a = jQuery(this),
                            c = jQuery(a.attr("title").split("\n\n")[0].split(" "));
                        a.mark = []; a.tags = "";
                        b.each(function() {
                            var b = String(this);
                            c.each(function() {
                                d(b, String(this)) && -1 === a.mark.indexOf(b) && (a.mark.push(b), a.tags = a.tags + "~" + b);
                            })
                        }), a.mark.length == b.length && mark(a);
                    })
                } else {
                    var c = String(this);
                    a.each(function() {
                        var a = jQuery(this);
                        jQuery(a.attr("title").split("\n\n")[0].split(" ")).each(function() {
                            d(c, String(this)) && (a.tags = c, mark(a));
                        });
                    });
                }
            }
        });
    }
    $(highlight());




	// first click: fit image to the available window height & width (upscale/downscale with the same aspect ratio)
    // second click: semi fullscreen. detaches the image, floats on top, same as first
	// third click: back to normal without translation overlays; sixth click: normal 

    jQuery('#image').click(function(e){
      var i = jQuery('#image');
      if(i.data('cl') === 1){
        i.css('position', 'absolute').css('top', '0px').css('right','0px').css('z-index','100').data('cl', 2);
        i.css('max-width', (window.innerWidth-1) + 'px').css('max-height', (window.innerHeight-1)+'px')
        return;
      }
      if(i.data('cl') === 2){
        i.css('max-width', 'initial').css('max-height', 'initial').css('top', 'initial').css('right', 'initial').css('position', 'initial').data('cl', false);
        return;
      }
      var o = i.offset();i.css('max-width', (window.innerWidth-o.left-1) + 'px').css('max-height', (window.innerHeight-o.top-1)+'px');
      i.data('cl', 1);
    });



})();
```