**CAI Userscripts** 

***
!!!Info Table of Contents
[TOC1]
***
#Auto Try Again
Clicks Try again everytime you trigger the filter. Checks for the pop-up every 50 miliseconds. Basically mandatory if you want to bypass the filter. Unnecessary once you do it since then it is non-existent.

```JavaScript
// ==UserScript==
// @name         Auto Try again CAI
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Auto-clicks "Try Again" everytime you trigger the filter in CAI. Checks for pop-up every 50 miliseconds
// @author       You
// @match        https://beta.character.ai/chat*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=character.ai
// @grant        none
// ==/UserScript==

(function() {
    let counter = 0
    var interval = setInterval(function() {
        var toastify = document.querySelectorAll('[role="alert"]');
        if (toastify.length > 0) {
            for (var i = 0; i < toastify.length; i++) {
                if (toastify[i].innerHTML.indexOf("Try Again") !== -1) {
                    toastify[i].querySelector(".btn-primary").click();
                    counter++
                    console.log('Auto-clicked %s times', counter)
                    break;
                }
            }
        }
    }, 50);
})();
```

#Save Prompt
Based on HYW, it saves your prompt when you click "enter" on a box similar to HYW's, only that it is to the left side of the screen, and if you send it by clicking on the send button, it will also copy the prompt to your clipboard

```JavaScript
// ==UserScript==
// @name         CAI copy prompt
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Save prompt everytime you send a message.
// @author       You
// @match        https://beta.character.ai/chat*
// @require      https://code.jquery.com/jquery-3.4.1.min.js
// @require      https://gist.githubusercontent.com/BrockA/2625891/raw/9c97aa67ff9c5d56be34a55ad6c18a314e5eb548/waitForKeyElements.js
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==

//Shamelessly stolen from HYW

window.addEventListener('load', function () {
  let styleHTML = document.createElement('style');
  styleHTML.innerHTML = `
    html {
        height: 100%;
        overflow: hidden;
        width: 100%;
    }
    body {
        height: 100%;
        overflow-x: hidden;
        overflow-y: auto;
        width: 100%;
    }
   .user-message {
       padding: 4px 4px 3px 4px;
       margin: 40px 4px 0 0;
       border: 3px solid gray;
       position: absolute;
       top: 0;
       left: 0;
       width: 20%;
       height: 40%;
       overflow-y: scroll;
       border-radius: 0 0 8px 8px;
       z-index: 100;
       resize: both;
       direction: rtl;
       min-width: 100px;
       min-height: 100px;
  }
   .user-message div {
       margin-top: 5px;
       padding: 8px;
       background-color: lightpink;
       direction: ltr;
  }
   .hywmsg {
       border-radius: 8px;
  }
   .hywmsg.non-deleted {
       background-color: aquamarine;
  }
  `
  document.body.appendChild(styleHTML);

  let promptHTML = document.createElement('div');
  promptHTML.innerHTML = `
    <div>
      <div class="user-message"></div>
    </div>`;
  document.body.appendChild(promptHTML);
}, false);


function draw(prompText) {
    let canvas = document.querySelector(".user-message");
    canvas.innerHTML = "";
    let div = document.createElement("div");
    div.classList.add("hywmsg");
    div.style.opacity = 0.8;
    div.innerText = prompText
    canvas.appendChild(div);
}

(function() {
    function copyPrompt() {
        console.log("test")
        var buttons= document.getElementsByClassName("btn py-0");
            for(var i=0; i<buttons.length; i++) {
                buttons[i].addEventListener("click", function() {
                    var input = document.getElementById("user-input");
                    if(input.value !== ""){
                        draw(input.value)
                        input.select();
                        document.execCommand("copy");
                    }
                    
                });
            }
            document.getElementById("user-input").addEventListener("keydown", function(event) {
                if (event.key === "Enter") {
                    var input = document.getElementById("user-input");
                    if(input.value !== ""){
                        draw(input.value)
                    }
                }
            });
    }

    jQuery(document).ready(waitForKeyElements("#user-input", copyPrompt));
})();
```
#Custom background and text colors
A heavier script, it gives italics and regular text different colors for both user and character at user discretion, as well as load a background image of your choice. It changes the chat background to a darker, translucent box so the text doesn't get lost on the background, color also at user discretion. 
```JavaScript
// ==UserScript==
// @name         CAI Custom Background and Text Color + remove strikethrough
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Add a background image to CAI, change text colors and remove strikethrough.
// @author       You
// @match        https://beta.character.ai/chat*
// @require      https://code.jquery.com/jquery-3.4.1.min.js
// @require      https://gist.githubusercontent.com/BrockA/2625891/raw/9c97aa67ff9c5d56be34a55ad6c18a314e5eb548/waitForKeyElements.js
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==

/*
last update: 16/01/2023
== todo ==
1. Find a way to change color for text within english quotation marks without losing the quotes marks themselves
2. Set up custom chat box background colors for each character
== issues ==
- Noticeable increase in loading time, specially for long chats and for larger images
== how it works ==
1a Splits the title of the page at "-" to get the name of the character
1b Creates a dictionary, key = character name (IE: Draculina), Value = Image URL
1c Creates a dictionary nested in a dictionary, key = character name, value = dictionary object -> key = HTML text tag (p, em, strong, background) value: HTML color
1c for BACKGROUND you have to specify it using RGBA so that you can set the opacity of the color. If you don't specify a background it will default to translucid black
1d Removes strikethrough, sets up some other custom CSS (italics pink for character and green for you)
- this excludes elements previously checked.
- changes text based on matches.
1c. after checking a text node against all rules, applies a 'checked' class to the element containing the text node.
2a. dlt1 and dlt2 completely replaces text by default, option to change.
    */

//Page opacity and chatbox color

(function() {
    function imgshit() {
        // ========================== Page set-up =================================================================|
        //Page opacity and chatbox color
        const chatTopOpacity = "0.2"; //Opacity of the top of the page (character name, short description, buttons.)
        const chatBottomOpacity = "0.8"; //Opacity of the bottom of the page (message input box, recommended 0.8 or higher)
        const chatBoxColor = "rgba(0, 0, 0, 0.8)"; //Color and Opacity of the chatBox (where the messages are)
        const defaultUserEmColor = "green";
        const defaultUserPColor = "white";
        const defaultCharEmColor = "pink";
        const defaultCharPColor = "white";


        var title = document.title;
        var titleArray = title.split(" - "); // Chat page title is always "Character AI - *Character_Name*".
        var backgroundImage = {
            //Format ---> "Character_name": "Image URL", example:
            //"Akila": "https://files.catbox.moe/Imagethatdoesn'texistrn.png", ---> Comma if not the last


        };

        //Text and background colors. If Background is not specified it will use the default color set in chatBoxColor
        /*Format ---> 
        "Character name": {
            "p": "color",
            "em": "color",
            "strong": "color",
            "background": "color(RGBA)" (Optional)

        },  ---> Comma if it is not the last */

        var color = {
            "Akila": {
                "p": "#563d88",
                "em": "#651b32",
                "strong": "#816cc9",
                "background": "rgba(0, 0, 0, 0.7)"
            }

        };

        // ====================================== TEXT COLOR AND CHAT BOX BACKGROUND SHIT =================================================================|

        var css1 = ".char-msg em { color: " + defaultCharEmColor + " !important; } .char-msg p { color:  " + defaultCharPColor + " !important; }";
        var css2 = ".user-msg em { color: " + defaultUserEmColor + " !important; } .user-msg p { color:  " + defaultUserPColor + " !important; }";
        var css3 = "del { text-decoration: none !important; } del::before { content: '~'; } del::after { content: '~' }";
        var css
        //var elements = document.querySelectorAll(".col-10.p-2.pt-0", ".msg.char-msg");
        var chatBottom = document.getElementsByClassName("container-fluid  chatbottom");
        var chatTop = document.getElementsByClassName("container-fluid  chattop"); //TODO: Find a better query
        for (var i = 0; i < chatTop.length; i++) {
            chatTop[i].style.opacity = chatTopOpacity;
            chatBottom[i].style.opacity = chatBottomOpacity;
        }


        const caiChatScroll = document.getElementById("scrollBar");
        if (titleArray[1] in color && "background" in color[titleArray[1]]) {
            caiChatScroll.style.backgroundColor = color[titleArray[1]].background;
        } else {
            caiChatScroll.style.backgroundColor = chatBoxColor;
        }

        //var elements = document.getElementsByClassName("col-10"); //TODO: Find a better query
        /*for(var j=0; j<elements.length; j++) {
            if(titleArray[1] in color && "background" in color[titleArray[1]]) {
            elements[j].style.backgroundColor = color[titleArray[1]].background;
            }else{
                elements[j].style.backgroundColor = "rgba(0, 0, 0, 0.5)";
            }

        }*/
        if (titleArray[1] in color) {
            css1 = ".char-msg em { color: " + color[titleArray[1]].em + " !important; } .char-msg p { color:  " + color[titleArray[1]].p + " !important; }.char-msg strong { color: " + color[titleArray[1]].strong + " !important; }";
        }
        var head = document.getElementsByTagName("head")[0];
        var style = document.createElement("style");
        style.setAttribute("type", 'text/css');
        style.innerHTML = css1 + css2 + css3;
        head.appendChild(style);




        // ==== IMG SHIT =================================================================|

        var im = document.querySelector(".apppage")
        if (titleArray[1] in backgroundImage) {
            im.style.backgroundImage = "url(" + backgroundImage[titleArray[1]] + ")";
            im.style.Position = "center";
            im.style.backgroundSize = "cover";
        }
    }
    let runWhenLoaded = 1;
    if (runWhenLoaded) {
        jQuery(window).on("load", function() { //after all initial images are loaded.
            //fullCheck = 1;
            imgshit();
        });
    }
    jQuery(document).ready(waitForKeyElements("img", imgshit));
})();
```
#Replacer

Replaces words in the chat for other words. Uses Regex. Use it to make euphemisms better or to turn any interaction into NSFW.
For example, if you want to replace "DNA bags" for "balls", put this in let replacerules={}, follow the examples there:  [/DNA bags/i, "balls"],
 Can be used in mobile through kiwi browser if you replace "document.body," (yes that includes the comma, use ctrl+F) for "caiChatScroll," (again includes the comma.)
```JavaScript
// ==UserScript==
// @name         Replace Text CAI ver
// @namespace    https://github.com/erickRecai
// @version      1.05.03
// @description  Replaces text with other text.
// @author       guyRicky (a couple lines edited by an anon)

// @match        *://beta.character.ai/*
// @noframes

// @exclude      *://docs.google.com/*
// @exclude      *://drive.google.com/*
// @exclude      *://mail.google.com/*

// @require      https://code.jquery.com/jquery-3.4.1.min.js
// @require      https://gist.githubusercontent.com/BrockA/2625891/raw/9c97aa67ff9c5d56be34a55ad6c18a314e5eb548/waitForKeyElements.js

// @licence      CC-BY-NC-SA-4.0; https://creativecommons.org/licenses/by-nc-sa/4.0/
// @licence      GPL-3.0-or-later; http://www.gnu.org/licenses/gpl-3.0.txt
// ==/UserScript==
/* jshint esversion: 6 */

(function () {
    'use strict';

    if(0){/*
last update: 7/04/2020
== todo ==
1. comment on iframes.
1. script execution flow with FHD.
1. separate counter for each execution instance.
10. case: 2 text nodes have the same parent block.
== issues ==
- certain text nodes aren't accessed with markCheckedElement enabled. (multiple text nodes)
== how it works ==
1a. calls processPage() once for each major run.
1b. creates list of specific text nodes then checks each against all rules.
1ba. with special replace enabled, if delete or full replace match, check stops after the first special match.
- this excludes elements previously checked.
- changes text based on matches.
1c. after checking a text node against all rules, applies a 'checked' class to the element containing the text node.
2a. dlt1 and dlt2 completely replaces text by default, option to change.
== notification notes ==
1e. elements checked by title attributes are processed in a separate block.
5a. notifications only work for those sites enabled with filters.
== version history ==
== 1.05.03 ==
- custom execution time
- some clean up.
== code markers ==
AA. initial setup
AB. replace rules
AC. special rules
BA. script options
BB. notif code block
CA. processPage()
CB. execution control
DA. script button
DB. support functions
    */}

    // ==== AA. initial setup =====================================================================|

    const scriptPrefix = "rplt-";
    const scriptTag = "RPLT";

    let runScript = 1;
    runScript = getOptionState("enable-"+ scriptPrefix +"script", runScript);

    if (runScript) {

        let enableConsoleMessages = 1; // default 0; set to 1 to show console messages.
        enableConsoleMessages = getOptionState("log-"+ scriptPrefix +"msg", enableConsoleMessages);

        let enabledMessages =
            //"MA|"+ // any rule matches
            "TT-MA|"+ // page title match.
            "TXT-MA|"+ // all text matches.
            "DLT1|"+ // delete1 matches.
            "DLT2|"+ // delete2 matches
            "FR1|"+ // full replace matches.
            //"CH-TT|"+ // changed text.

            "RUNT|"+ // runtime messages (amount of time to execute)
            "EXEC|"+ // execution messages (when code is executed)
            "\\bST\\b|"+ //script option change update
            "GEN$|"+ // general messages
            "^1"; // high priority messages
        let logAll = 0; // if 1, logs all titles from blocks.
        logAll = getOptionState("log-"+ scriptPrefix +"all", logAll);
        if (logAll) {
            enabledMessages = enabledMessages.concat("|title");
        }
        const enabledMessagesRegex = new RegExp(enabledMessages); // used in consolelog().

        consolelog("#### ("+ scriptTag +") text replace script began. ####", "EXEC");

        // ==== AB. replace rules =================================================================|

        let replaceRules = [
            //[//i, ""], // rule template
            [/\bDNA tube\b/i, "cock"],


            // basic examples:
            //[/commit/i, "dog"],
            //[/branch/i, "turtle"],
            //[/file/i, "birdie"],
            //[/\w/g, "a"], //replaces all characters with "a".
            //[/(.|\W)+/i, "text"], //replaces all text instances with "text".
        ];

        // ==== AC. special rules =================================================================|

        const enableSpecialRules = 1;
        if (enableSpecialRules) {
            // example of including a rule list defined in a spearate script.
            if (unsafeWindow.globalListName) {
                replaceRules = replaceRules.concat(unsafeWindow.globalListName);
            }
        }
        //consolelog(replaceRules,"all rules"); //test: double check rule contents

        // ==== BA. script options ================================================================|

        const classWhitelist = /notif-hidden|notif-text|tag-inst|-counter/i;
        // text nodes with parent elements with these classes are excluded.

        const generateRecheckButton = 1;

        let dynamicChecking = 1; // default 1; set to 1 to run the script automatically when new image elements are detected.
        dynamicChecking = getOptionState("enable-"+ scriptPrefix +"dynamic-checking", dynamicChecking);
        // setting to 0 would make this run a few more times when dynamically checking.

        // ==== checked in processPage() ====
        // managable with optional Script Options userscript.
        let logRuntimes = 1; // default 0; set to 1 to log function runtimes to the console.
        let markCheckedElements = 0; // default 1; set to 0 if certain sites start appearing weirdly.

        let enableSpecialReplace = 1;
        let fullDelete = 0; // default 1; if 1, text is completely replaced.
        let addTag = 1; // if fullDelete is active, adds a tag without replacing.

        // ==== BB. notif code ====================================================================|

        // 'script options' options
        let enableExecCounter = 0;
        enableExecCounter = getOptionState("enable-"+ scriptPrefix +"counter", enableExecCounter);
        let enableNotifications = 0;
        enableNotifications = getOptionState("enable-"+ scriptPrefix +"notifs", enableNotifications);
        let autohideNotifs = 0; // default 0; notifs disappear after a set period of time. used in createNotif()
        let startCollapsed = 1; //default 1;

        // notif css variables.
        const notifsHex = "#ddd";
        const notifsOpacity = .4; // default .4; set to a value between 0 and 1, 1 is no transparency, .5 is 50% transparency.
        const notifsWidth = 120; // default 120; width in pixels of each notification.

        let notifContainerId = "notif-main-container";

        // generate notif container if needed.
        if ((enableExecCounter || enableNotifications) && !jQuery("#"+ notifContainerId).length) {

            // ==== setting/checking initial visual state of notifs ====

            // constrolled exclusively by local storage or the default value.
            const localStorageName = "notif start collapsed";
            if (window.localStorage.getItem(localStorageName)) {
                startCollapsed = window.localStorage.getItem(localStorageName);
                startCollapsed = (startCollapsed == "true");
            }

            const visibleClass = "notif-visible";
            const hiddenClass = "notif-hidden1";
            let startingStateClass = visibleClass;
            let otherStartingStateClass = hiddenClass;
            if (startCollapsed) {
                startingStateClass = hiddenClass;
                otherStartingStateClass = visibleClass;
            }

            // ==== create container ==============================================================|
            /*
            [ notif main container
                [notif1] - counters
                [hide] - button
                [open] - button
                [close] - button
                [clear] - button
                [notif2
                    [dlt-container]
                    [ll-container]
                    [ot-container]
                ]
            ]
            - hide: makes visible open | hides close, clear, notif2
            - open: makes visible hide, close, clear, notif2 | hides open
            - close: deletes notif main container.
            - clear: empties notif-container2
            */

            const openButtonId = "notif-open";
            const hideButtonId = "notif-hide";

            let notificationsElement =
                "<div id='"+ notifContainerId +"'>"+
                "<div id='notif-container1'></div>"+
                "<div id='"+ hideButtonId +"' class='notif-red notif-rounded-block "+ startingStateClass +"'>notif hide</div>"+
                "<div id='"+ openButtonId +"' class='notif-green notif-rounded-block "+ otherStartingStateClass +"'>notif open</div>"+
                "<div id='notif-close' class='notif-gray notif-rounded-block "+ startingStateClass +"'>close notif[]</div>"+
                "<div id='notif-clear' class='notif-orange notif-rounded-block "+ startingStateClass +"'>clear notif</div>"+
                "<div id='notif-container2' class=' "+ startingStateClass +"'>"+
                    "<div id='dlt-container'></div>"+
                    "<div id='ll-container' class='notif-hidden1'></div>"+
                    "<div id='ot-container' class='notif-hidden1'</div>"+
                "</div>"+
                "</div>";
            jQuery("body").prepend(notificationsElement);

            let textReaderElement =
                "<div id='notif-text-overlay' class='notif-text-hidden'></div>";
            jQuery("body").prepend(textReaderElement);

            jQuery('#notif-container2').on( {
                mouseenter: function () {
                    let notifText = jQuery(this).find(".notif-text").text();
                    let notifClassList = this.className;
                    if (/red/.test(notifClassList)) {
                        jQuery("#notif-text-overlay").addClass("notif-red");
                    }else if (/orange/.test(notifClassList)) {
                        jQuery("#notif-text-overlay").addClass("notif-orange");
                    }else if (/yellow/.test(notifClassList)) {
                        jQuery("#notif-text-overlay").addClass("notif-yellow");
                    }else {
                        jQuery("#notif-text-overlay").addClass("notif-gray");
                    }
                    jQuery("#notif-text-overlay").text(notifText);
                    jQuery("#notif-text-overlay").addClass("notif-text-visible");
                },
                mouseleave: function () {
                    jQuery("#notif-text-overlay").removeClass("notif-text-visible");
                    jQuery("#notif-text-overlay").removeClass("notif-red");
                    jQuery("#notif-text-overlay").removeClass("notif-orange");
                }
            }, '.notif-instance');

            // ==== close ====
            jQuery("#notif-close").click(function(){
                jQuery("#"+notifContainerId).remove();
                //console.log("RPL notif close clicked. ("+notifContainerId+")");
            });

            // ==== clears container2 which contains notif instances. ====
            function clearNotif(){
                jQuery("#notif-container2").empty();
            }
            jQuery("#notif-clear").click(clearNotif);

            // ==== open/hide events ==============================================================|

            const mainSelector = "#notif-container2, #"+ hideButtonId +", #notif-close, #notif-clear";

            jQuery("#"+ hideButtonId).click(function () {
                //console.log(hideButtonId);
                window.localStorage.setItem(localStorageName, true);

                switchClasses(
                    mainSelector,
                    "#"+ openButtonId,
                    visibleClass,
                    hiddenClass
                );
            });

            jQuery("#"+ openButtonId).click(function () {
                //console.log(openButtonId);
                window.localStorage.setItem(localStorageName, false);

                switchClasses(
                    mainSelector,
                    "#"+ openButtonId,
                    hiddenClass,
                    visibleClass
                );
            });

            function switchClasses(mainSelector, subSelector, removedClass, newClass) {
                jQuery(mainSelector).removeClass(removedClass);
                jQuery(mainSelector).addClass(newClass);
                jQuery(subSelector).removeClass(newClass);
                jQuery(subSelector).addClass(removedClass);
            }

            // ==== CSS ===========================================================================|
            if(1){var notifsCss =
    `<style type="text/css">
        #`+ notifContainerId +` {
            width: `+ notifsWidth +`px;
            max-height: 50%;
            margin: 0 2px 2px;
            display: block;
            line-height: initial;
            color: #000;
            opacity: `+ notifsOpacity +`;
            position: fixed;
            top: 0px;
            right: 0px;
            z-index: 9999;
            overflow-y: auto;
        }
        #`+ notifContainerId +`:hover {
            opacity: 1;
        }
        .notif-rounded-block {
            display: block;
            padding: 2px;
            border-radius: 3px;
            margin-top: 2px;
            font-size: 11px !important;
            font-weight: bold;
            text-align: center;
            cursor: pointer;
        }
        .s-counter {
            display: block;
            padding: 2px;
            border-radius: 4px;
            margin-top: 2px;
            background: #ddd;
            font-size: 11px !important;
            font-weight: bold;
            text-align: center;
        }
        .notif-text-hidden {
            display:none;
        }
        .notif-text-visible {
            display: block;
            max-width: 50%;
            padding: 5px;
            border: #999 solid 2px;
            border-radius: 10px;
            position: fixed;
            top: 5px;
            left: 5px;
            z-index: 999999;
            font-size: 15px !important;
            font-weight: bold !important;
            text-align: center !important;
            color: black !important;
        }
        .notif-instance {
            display: block;
            padding: 2px;
            border-radius: 4px;
            margin-top: 2px;
            background: `+ notifsHex +`;
            font-size: 11px !important;
            font-weight: bold;
            text-align: center;
            cursor: pointer;
        }
        .notif-instance div{/* div holding the rule.*/
            max-height: 12px;
            padding: 0px;
            margin: 0px;
            border: 0px;
            overflow: hidden;
            word-break: break-all;
        }
        .notif-hidden{ /* meant to hide the rule */
            opacity: .1;
        }
        .notif-hidden:hover {
            opacity: 1;
        }
        .notif-red {
            background: #f67066;
        }
        .notif-orange {
            background: #ffc107; //yellowish
        }
        .notif-yellow {
            background: #ffc107; //yellowish
        }
        .notif-green {
            background: #62bb66;
        }
        .notif-gray {
            background: #777;
        }
        /* collapsible classes */
        .notif-hidden1 {
            display: none !important;
        }
        .notif-visible {
            display: block !important;
        }
        div#ll-container, div#ot-container {
            border-top: solid black 3px;
        }
    </style>`;
            }
            jQuery(document.body).append(notifsCss);
        }

        if(enableExecCounter) {
            jQuery("#notif-container1").prepend("<div id='"+ scriptTag +"-counter' class='s-counter .notif-rounded-block'>T No text nodes found.</div>");
        }

        // resets lastIndex on tests with global modifiers.
        RegExp.prototype.regexTest = function(testString){
            //consolelog("## regexTest() ##", 1);
            if (this.test(testString)) {
                if (/.\/i?g/.test(this) && this.lastIndex) {//regex global modifier needs to be reset.
                    //consolelog("## last index: "+ this.lastIndex +" ##", 1);
                    this.lastIndex = 0;
                }
                return true;
            }
            return false;
        };

        NodeList.prototype.forEach = Array.prototype.forEach;

        // ==== CA. processPage() =================================================================|

        // ==== processPage() globals ====
        let titleChecked = 0; // if the page title was checked or not.
        let fullCheck = 0;

        // ==== counters ====
        let nodeCounter = 0; // counts text nodes.
        let deleteMatches = 0;
        let fullReplaceMatches = 0;
        let executionCounter = 0; // the number of times processPage() was executed.

        function processPage() {
            executionCounter++;

            logRuntimes = getOptionState("log-"+ scriptPrefix +"runtimes", logRuntimes);
            if (logRuntimes) {
                var startTime = performance.now();
            }

            let rulesNum = replaceRules.length;

            // per element variables
            let ruleMatched = 0;

            // ==== checks the title of the page ==================================================|
            if(1){
                let titleText = jQuery("title").text();
                if (titleText && !titleChecked) {
                    for (let index = 0; index < rulesNum; index++) {
                        if (replaceRules[index][0].regexTest(titleText)) {
                            consolelog(scriptTag +" (title match): "+ titleText +" | "+ replaceRules[index][0], "TT-MA");
                            titleText = titleText.replace(replaceRules[index][0], replaceRules[index][1]);
                            jQuery("title").text(titleText);
                        }
                    }
                    titleChecked = 1;
                }
            }

            // ==== selects specified text elements ===============================================|
            if(1){
                const excludedElements = /CODE|SCRIPT|STYLE|TEXTAREA/i;
                const checkClassRegex = new RegExp(scriptPrefix +"node","i");
				var caiChatScroll = document.getElementById("scrollBar")
                var textWalker = document.createTreeWalker(
                    document.body,
                    NodeFilter.SHOW_TEXT,
                    {
                        acceptNode: function (node) {
                            if (node.nodeValue.trim() &&
                                !excludedElements.test(node.parentNode.nodeName) && // exclude scripts and style elements
                                (fullCheck || !checkClassRegex.test(node.parentNode.classList)) && // exclude checked elements
                                !classWhitelist.test(node.parentNode.classList)) {
                                return NodeFilter.FILTER_ACCEPT;
                            }
                            return NodeFilter.FILTER_SKIP;
                        }
                    },
                    false
                );
            }
            let textNode = textWalker.nextNode();
            let previousParent;

            // ==== for each textNode =============================================================|
            while (textNode) {

                let nodeText = textNode.nodeValue; // is changed based on matches.
                if (!fullCheck) {
                    let immediateParentNode = textNode.parentNode; // element containing the text node.
                    nodeCounter++;

                    // common case: new parent is different than previous.
                    if (previousParent && !(previousParent == immediateParentNode) ) {
                        markCheckedElements = getOptionState(scriptPrefix +"mark-checked", markCheckedElements);
                        if (markCheckedElements) {
                            // only sets checked class if previous parent is different.
                            previousParent.classList.add(scriptPrefix +"node-"+ nodeCounter);
                        }
                        previousParent = immediateParentNode;
                    }else if (!previousParent) {
                        previousParent = immediateParentNode;
                    }
                }

                // ==== for each rule =============================================================|
                for (let index = 0; index < rulesNum; index++) {

                    let currentRuleRegex = replaceRules[index][0];
                    let replacementValue = replaceRules[index][1];

                    if (currentRuleRegex.regexTest(nodeText.trim())) {
                        ruleMatched = 1;
                        let matchPrefix = "GEN0";
                        consolelog("("+ scriptTag +") (n)"+ nodeCounter +" (match): "+ nodeText.trim() +" | "+ currentRuleRegex, "TXT-MA");

                        const disableReplace = 0; // test: check what is checked through each run.
                        if (!disableReplace) {

                            enableSpecialReplace = getOptionState("enable-special-replace", enableSpecialReplace);
                            // ==== delete1 match =================================================|
                            if (enableSpecialReplace && (/DELETE1/.test(replacementValue) || /DELETE2/.test(replacementValue)) ) {
                                deleteMatches++;

                                matchPrefix = "DLT99";
                                if (/DELETE1/.test(replacementValue) && !/DELETE1/.test(nodeText)) {
                                    matchPrefix = "DLT1";
                                }else if (/DELETE2/.test(replacementValue) && !/DELETE2/.test(nodeText)) {
                                    matchPrefix = "DLT2";
                                }

                                consolelog("("+ scriptTag +") ("+ matchPrefix +") n"+ nodeCounter +" (match): "+ nodeText.trim() +" | "+ currentRuleRegex, matchPrefix);
                                createNotif(nodeCounter +" "+ matchPrefix, currentRuleRegex, nodeText);

                                fullDelete = getOptionState("enable-full-delete", fullDelete);
                                addTag = getOptionState("add-tag", addTag);
                                const tagRegex = new RegExp("^\\["+matchPrefix);

                                if (fullDelete) {
                                    nodeText = "## "+ matchPrefix +" ##"; // replaces the text completely.
                                    break;
                                }else if (addTag && !tagRegex.text(nodeText)) {
                                    nodeText = "["+ matchPrefix +"]: " + nodeText; // prepends DLT1 or DLT2
                                }
                            }
                            // ==== full replace match ============================================|
                            if (enableSpecialReplace && /^FR1/.test(replacementValue)) {
                                fullReplaceMatches++;
                                matchPrefix = "FR1";
                                consolelog("("+ scriptTag +") ("+ matchPrefix +") n"+ nodeCounter +" (match): "+ nodeText.trim() +" | "+ currentRuleRegex, matchPrefix);
                                createNotif(nodeCounter +" "+ matchPrefix, currentRuleRegex, nodeText);

                                nodeText = replacementValue;
                                break;
                            }
                            // ==== base case =====================================================|
                            nodeText = nodeText.replace(currentRuleRegex, replacementValue);
                        } // end if (!disableReplace)
                    }
                } // end for (each rule) ==========================================================|

                if (ruleMatched) { // modify text block.
                    ruleMatched = 0;
                    textNode.nodeValue = nodeText;
                    consolelog("("+ scriptTag +") (n)"+ nodeCounter +" (text): "+ nodeText.trim(), "CH-TT");
                }
                textNode = textWalker.nextNode();
            } // end while (textNode) =============================================================|

            if (!fullCheck) {
                // ==== update counter ====
                let counterText = "T DLT:"+ deleteMatches +" | FR:"+ fullReplaceMatches +" | N:"+ nodeCounter + " | EX:"+ executionCounter;
                jQuery("#"+ scriptTag +"-counter").text(counterText);
                if (nodeCounter) {
                    jQuery("#"+ scriptTag +"-counter").addClass("notif-green");
                }
            }else { //end fullCheck.
                fullCheck = 0;
            }

            //consolelog("## ("+ scriptTag +") execution #"+ executionCounter +" ##", "EXEC");
            // script option handles if this is displayed or not.
            if (logRuntimes) {
                const endTime = performance.now();
                const runTime = ((endTime - startTime) / 1000).toFixed(2);
                if (runTime > 1) {
                    consolelog('('+ scriptTag +') finished after ' + runTime + ' seconds.', "RUNT");
                }else {
                    consolelog('('+ scriptTag +') finished in less than 1 second.', "RUNT");
                }
            }
        } //end function function replaceText()

        // ==== CB. execution control =============================================================|

        //console.log("("+ scriptTag +") EXEC: Initial run.");
        //processPage();
        let runWhenReady = 0;
        runWhenReady = getOptionState("run-when-ready", runWhenReady);
        if (runWhenReady) {
            jQuery(document).ready(function() { //after DOM has loaded.
                consolelog("("+ scriptTag +") EXEC: document.ready()", "EXEC");
                //fullCheck = 1;
                processPage();
            });
        }

        let runWhenLoaded = 1;
        runWhenLoaded = getOptionState("run-when-loaded", runWhenLoaded);
        if (runWhenLoaded) {
            jQuery(window).on("load", function() { //after all initial images are loaded.
                consolelog("("+ scriptTag +") EXEC: window.load()", "EXEC");
                //fullCheck = 1;
                processPage();
            });
        }
        if (dynamicChecking) {
            jQuery(document).ready(waitForKeyElements("img", processPage));
        }

        // ==== DA. script button =================================================================|

        let buttonsContainerId = "ctb-container1";
        if (generateRecheckButton && jQuery("#"+ buttonsContainerId).length) {
            jQuery("#"+ buttonsContainerId).prepend("<div id='"+ scriptTag +"-reset' class='ctb-blue ctb-rounded-block'>run "+ scriptTag +"</div>"); //added to beginning
            //jQuery("#"+ scriptTag +"-reset").click(processPage);
            jQuery("#"+ scriptTag +"-reset").click(function() {
                fullCheck = 1;
                processPage();
            });
        }

        // ==== DB. support functions =============================================================|

        function createNotif(notifLabel, notifRule, notifText) { //msg1 needs to match notifTypes
            enableNotifications = getOptionState("enable-"+ scriptPrefix +"notifs", enableNotifications);
            if (enableNotifications) {
                let additionalClass = "notif-gray";
                let notifContainer = "ot-container";
                if (/dlt/i.test(notifLabel)) {
                    additionalClass = "notif-red";
                    notifContainer = "dlt-container";
                }

                let newNotif =
                    "<div class='notif-instance "+ additionalClass +"'><div>t n"+ notifLabel +"</div>"+
                        "<div class='notif-hidden'>"+ notifRule +"</div>"+
                        "<div class='notif-text' hidden>"+ notifText+"</div>"+ // to be displayed at the bottom left.
                    "</div>";

                let enabledNotifTypesRegex = /./;
                if (enabledNotifTypesRegex.test(notifLabel)) {
                    jQuery("#"+ notifContainer).append(newNotif);
                    jQuery(".notif-instance").click(function(){
                        jQuery("#notif-container2").empty();
                    });

                    if (!/dlt/i.test(notifLabel)) {
                        jQuery("#ot-container").removeClass("notif-hidden1");
                    }

                    autohideNotifs = getOptionState("autohide-notifications", autohideNotifs);
                    if (autohideNotifs) {
                        const notifDuration = 10; // default 10; amount of seconds notifications are displayed before disappearing.
                        setTimeout(function() {
                            jQuery(".notif-instance").remove();
                        }, notifDuration*1000);
                    }
                }
            }
        } // end function creatNotif()

        function consolelog(text, messageType) {
            if (enableConsoleMessages && enabledMessagesRegex.test(messageType)) {
                console.log(text);
            }
        }

        // ==== script end ========================================================================|
        consolelog("#### ("+ scriptTag +") text replace script is active. ####", "EXEC");

    } // end if (runScript)

    // ============================================================================================|

    // = getOptionState(, );
    // used to update option if 'script option' is set.
    function getOptionState(idName, currentState) {
        if (document.getElementById(idName)) {
            return document.getElementById(idName).checked;
        }
        return currentState;
    }
})();
```
#Request Swipes
The most useful script to date. This one allows you to request a given number of swipes at the push of a button, limited it to a maximum of 100 at a time to prevent retards from rate-limiting themselves and warning the devs. It requires you to get at least ONE reply and then SWIPE (you don't need to wait for the swipe to arrive) per message you are going to request swipes from, this is because each message has an ID and this is used in the request. I made a big red button that will change to green so you guys know when you can request the swipes. Vulnerable to the double reply bug if you get chat error 500 and don't reload the page afterwards. 

```JavaScript
// ==UserScript==
// @name         CAI request swipes
// @namespace    http://tampermonkey.net/
// @version      1.0
// @description  Generates a given number of swipes. Need you to swipe at least once to get the request data.
// @author       You
// @match        https://beta.character.ai/chat*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=character.ai
// @grant        none
// ==/UserScript==

//READ ME: IF THE "GREEN=GO, RED=SWIPE" BUTTON IS RED DON'T CLICK THE OTHER ONES. IT IS NOT ROCKET SCIENCE, SWIPE FIRST.
//I'M NOT RESPONSIBLE FOR ANYTHING THAT HAPPENS.

(function() {
    // Create the container div for the buttons
    const container = document.createElement('div');
    container.style.position = 'fixed';
    container.style.bottom = '10px';
    container.style.right = '10px';
    container.style.display = 'flex';
    container.style.flexDirection = 'row-reverse';

    // Create the 5 swipes button
    const button5 = document.createElement('button');
    button5.textContent = '5';
    button5.style.width = '30px';
    button5.style.height = '30px';
    button5.style.marginLeft = '5px';
    button5.style.backgroundColor = 'blue';
    button5.addEventListener('click', () => {
        runFunctionNTimes(5);
    });
    container.appendChild(button5);

    // Create the 10 swipes button
    const button10 = document.createElement('button');
    button10.textContent = '10';
    button10.style.width = '30px';
    button10.style.height = '30px';
    button10.style.marginLeft = '5px';
    button10.style.backgroundColor = 'green';
    button10.addEventListener('click', () => {
        runFunctionNTimes(10);
    });
    container.appendChild(button10);

    // Create the 30 swipes button
    const button30 = document.createElement('button');
    button30.textContent = '30';
    button30.style.width = '30px';
    button30.style.height = '30px';
    button30.style.marginLeft = '5px';
    button30.style.backgroundColor = 'red';
    button30.addEventListener('click', () => {
        runFunctionNTimes(30);
    });
    container.appendChild(button30);

    // Create the custom swipes button
    const buttonQuestion = document.createElement('button');
    buttonQuestion.textContent = '?';
    buttonQuestion.style.width = '30px';
    buttonQuestion.style.height = '30px';
    buttonQuestion.style.marginLeft = '5px';
    buttonQuestion.style.backgroundColor = 'gray';
    buttonQuestion.addEventListener('click', () => {
        const input = prompt('Enter the number of times to run the function:');
        const num = parseInt(input);
         if (!isNaN(num) && num >= 1 && num <= 100) {
            runFunctionNTimes(num);
        } else {
            alert('Invalid input. Please enter a number between 1 and 100.');
        }
    });
    container.appendChild(buttonQuestion);

    const buttonCheck = document.createElement('button');
    buttonCheck.textContent = 'Green=go, Red=swipe';
    buttonCheck.style.height = '30px';
    buttonCheck.id = 'checkParentMsgIdButton';
    buttonCheck.style.marginLeft = '5px';
    buttonCheck.style.backgroundColor = 'red'
    buttonCheck.addEventListener('click', () => {
        checkParentMsgId();
    });
    container.appendChild(buttonCheck);
    document.body.appendChild(container);

    function runFunctionNTimes(n) {
        checkParentMsgId();
        makeRequest(n);

    }


    let requestHeaders, requestBody;
    const { fetch: origFetch } = window;
    window.fetch = async (url, options) => {
        if (url === 'https://beta.character.ai/chat/streaming/' && options?.method?.toUpperCase() === 'POST') {
            const request = new Request(url, options);
            const clonedRequest = request.clone();
            requestBody = await clonedRequest.text();
            requestHeaders = clonedRequest.headers;
            console.log(requestBody);
            checkParentMsgId();

            const response = await origFetch(url, options);
            return response;
        } else {
            return origFetch(url, options);
        }
    };
    const makeRequest = (n) =>{
        for (let i = 0; i < n; i++) {
            fetch("https://beta.character.ai/chat/streaming/", {
                "credentials": "include",
                "headers": {
                    "Accept": "*/*",
                    "Authorization": requestHeaders.get("Authorization"),
                    "content-type": "application/json",
                    "Sec-Fetch-Dest": "empty",
                    "Sec-Fetch-Mode": "cors",
                    "Sec-Fetch-Site": "same-origin"
                },
                "referrer": window.location.href,
                "body": requestBody,
                "method": "POST",
                "mode": "cors"
            });
        }

    }
    // Checking requestBody to see it is from a swipe or not. If it is green go ahead and if it is red don't do shit, retard.
    const checkParentMsgId = () => {
        const hasParentMsgIdNull = requestBody.includes('"parent_msg_id":null');
        const buttonElement = document.getElementById('checkParentMsgIdButton');
        if (hasParentMsgIdNull) {
            buttonElement.style.backgroundColor = 'red';
        } else {
            buttonElement.style.backgroundColor = 'green';
        }
    }
})();
```
