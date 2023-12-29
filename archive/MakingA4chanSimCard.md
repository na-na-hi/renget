# Making a 4chan sim card

[TOC2]

## Existing cards

- [The last /aicg/ thread](https://chub.ai/characters/Anonymous/the-last-aicg-thread-html-edition-cb5609d0)
- [Reverse Moral 4chan](https://chub.ai/characters/Anonymous/reverse-moral-4chan-html-edition-8df042b6)
- [Mongirl 4chan](https://www.chub.ai/characters/Anonymous/mongirl-4chan-html-edition-7a7b9a78/main)

I'll add your card if I see it on Chub or /aicg/.

## What this format is, what supports it

Each response is composed of 4chan posts. You can enlarge images by clicking on them. With some effort, the AI can even know about the content of the images. A blue board and red board variant is provided. Supported frontends are SillyTavern, Agnai, Risu, and Venus. This works on GPT-4(-Turbo), Claude, and Turbo-16k. Setting max tokens to 1000 is recommended.

![](https://files.catbox.moe/kzwpwr.jpg)

## How to do it?

I recommend downloading one of the existing sims that seems closest to what you want, going over the greeting, main defs, example dialog and jailbreak, and editing it to make it yours. You'll need to know a few things for that, which I'll cover in the "Essential knowledge" section. I'll cover more details in "Optional nitty-gritty" if you want to know everything about how this works.

In order to pick which card to start from, here's how the existing sims differ:

- **The last /aicg/ thread**: Blue board. All Anonymous. Has an OP. Two types of images: /aicg/-related images (the AI knows their content via their filenames), desu images (the AI doesn't know their meaning).
- **Reverse Moral 4chan**: Red board. All Anonymous. Has an OP. One type of images: illustrations the AI doesn't know their content.
- **Mongirl 4chan**: Red board. Anonymous and namefag posters. Has an OP.  One type of images: illustrations and the AI doesn't know their content.

### Essential knowledge

#### Images

If you don't want to use images at all, remove all the <figure> tags from the greeting, example dialog, and card jailbreak. If you do, continue reading.

How many images to use? I've used over 200 for mine, but you don't have to go that far. 50 should be fine.

You'll have to edit the example dialog, greeting, and card jailbreak to suit the URL scheme you're using. There are multiple strategies:

**Upload a bunch of images to neocities named 1.png, 2.png, etc...**

Then the last line in the jailbreak would look like:

`- Other posts must include a figure like in the template with these images: https://mysite.neocities.org/{{roll 50}}.png https://mysite.neocities.org/{{roll 50}}.png`

**Upload a bunch of images to neocities with descriptive names like an_alien_fucking_a_human_girl.png, an_alien_laughing.png, etc...**

This is what "The last /aicg/ thread" does in order for the AI to know the content if the images.

Then the last line in the jailbreak would look like:

`- Other posts must include a figure like in the template with these images: https://mysite.neocities.org/{{random:an_alien_fucking_a_human_girl.png,an_alien_laughing.png}} https://mysite.neocities.org/{{random:an_alien_fucking_a_human_girl.png,an_alien_laughing.png}}`

Yes, this will result in a HUGE {{random}} macro.

**Create waa.ai shortlinks for gelbooru images like https://waa.ai/moralreversal1, https://waa.ai/moralreversal2, etc...**

Similar to uploading them on neocities. I went this route because I didn't want to run the risk of getting my images taken down due to their controversial content. This is what the last line in the jailbreak would look like then:

`- Other posts must include a figure like in the template with these images: https://waa.ai/moralreversal{{roll 50}} https://waa.ai/moralreversal{{roll 50}}`


#### Example dialogue

The first example message MUST be some example of what {{user}} might say.

The second example message must be a plausible {{char}} output, where the first generated post is what {{user}} just said.

The last example message MUST be a {{user}} message containing the text of the greeting's first post, even if you don't intend for that post to look like it was made by {{user}}. This is to encourage the AI to always write what {{user}} sent in its first generated post.

Remember to change the image links to fit your scheme. Do not use {{random}}/{{roll}} in example dialogue, this isn't (universally) supported.

If you edit the dates/times/post numbers, be very careful to keep everything consistent.

#### Greeting

The first line MUST be a MARKDOWN invisible text, e.g. `[](start)`. This is because some non-HTML text is required before the `<style>` tag in the second paragraph, or frontends will discard it.

By default, the first post has the appearance of an OP message, and has a subject. The subject is configured in the `--subject` CSS variable inside the `<style>` tag. If you want to make the first post NOT an O, and/or make the first post look like it was posted by {{user}}, then read the "Commented, beautified CSS" section, you just have to remove a few lines.

The CSS must be on ONE LINE for cross-frontend support, and have NO DOUBLE QUOTES inside it. You can safely replace all double quotes with single quotes.

You can use {{random}} and {{roll}} here.

If you edit the dates/times/post numbers, be very careful to keep everything consistent. If you change the OP's post number, you'll have to edit the three occurrences of `#post-117980402` in the CSS to reflect the post ID that you're using. 

### Optional nitty-gritty

#### Seemingly-useless choices

If you find stuff that makes the prompt more complicated with no effect like using `&amp;gt;` instead of `>`, or using `!important` in some CSS properties, then it's probably for frontend-specific support. I didn't keep track of all of these choices, just don't go trying to trim stuff that might seem useless, chances are it's not.

#### CoT

Every bot message starts with the following template:

`<div class='imageboard'>`
`<!-- Generating this response's first post. It must be what {{user}} just said and have class 'by-you'. The last post number in this chat history was 117980120, so this one must add 100, totaling 117980220. This means posts replying to {{user}} in this response must include &gt;&gt;117980220: -->`

This is mostly for Turbo, otherwise it'll forget to make a post out of what {{user}} said, and if you simply ask to have a post ID higher than the last one, the idiot might still fuck it up, saying "the last post number was {second-to-last post number}, so this one must be {same post number as the last one}". I avoid these mistakes by asking to add 100 instead, fuck it.

#### This purposely doesn't support (You) and unique styling for posts replying to you

This was extremely hard to get consistent results for, even on a previous iteration that used a lot more CoT.

#### Commented, beautified CSS

If you want to dig into the CSS, here's a commented version.

```css
/*
 Recommended minifier: https://www.toptal.com/developers/cssminifier
 Recommended beautifier: https://www.freeformatter.com/css-beautifier.html
 In order to work on all frontends, ensure the minified output is ONE LINE and has NO DOUBLE QUOTES.
 */

/* global */
.imageboard {
  --board-bg: #eef2ff;
  --msg-bg: #d6daf0;
  --msg-bg-when-focused: #d6bad0;
  --msg-border: #b7c5d9;
  --subject-color: #0f0c5d;
  /* for red board use these:
  --board-bg: #ffe;
  --msg-bg: #f0e0d6;
  --msg-bg-when-focused: #d99f91;
  --msg-border: #d9bfb7;
  --subject-color: #cc1105;
   */
  --subject: '/aicg/ - AI Chatbot General';
  font-family: arial, helvetica, sans-serif;
  background: var(--board-bg);
  color: #000;
  padding: 10px;
  font-size: 13.333px;
}
.imageboard * {
  text-shadow: none;
  box-sizing: border-box;
  word-wrap: normal;
}


/* posts */

[id^=post-] {
  background-color: var(--msg-bg);
  border-color: var(--msg-border);
  border-width: 0px 1px 1px 3px;
  border-left-color: transparent;
  margin: 4px;
  padding: 5px 10px;
  display: grid;
  grid-template-columns: auto 1fr;
  grid-template-rows: auto 1fr;
  grid-template-areas: 'header header' 'figure article';
}
.by-you {
  border-left: 3px dashed rgba(221, 0, 0, .8);
}
/* when clicking on a >>link. useless on st/risu */
[id^=post-]:target {
  background: #d6bad0 !important;
}

/* post names, we avoid using classes to save tokens/complexity */
.imageboard [id^=post-] header span {
  color: #117743;
  font-weight: 700;
}

/* post header */
.imageboard header {
  grid-area: header;
  padding-left: 10px;
}

/* post image */
.imageboard figure {
  grid-area: figure;
  padding: 5px 0 0 10px;
  position: relative;
  margin: 0;
}
.imageboard img {
  max-width: 125px !important;
  max-height: 125px !important;
  margin: 0;
}
/* This is called the checkbox hack if you want to look it up. */
.imageboard input[type='checkbox'] {
  position: absolute !important;
  top: 0;
  left: 0;
  width: 100% !important;
  height: 100% !important;
  opacity: 0;
  cursor: pointer !important;
}
.imageboard input[type=checkbox]:checked ~ label img {
  max-width: 100% !important;
  max-height: unset !important;
  margin-bottom: 5px;
}

/* post content */
.imageboard article {
  grid-area: article;
  padding: 10px 10px 10px 15px;
  line-height: 1.1em;
}
/* >>links */
[id^=post-] a {
  color: #d00;
  text-decoration: underline;
}
.greentext {
  color: #789922;
}
/* disable "quote" and *italics* styling in frontends inside the posts */
.imageboard q,
.imageboard em {
  color: #000 !important;
  font-style: normal !important;
}

/* op/first post in greeting. if you use a different post number you'll have to change it here */
#post-117980402 {
  /* the html will mark this as by-you for reinforcement in combination with the pregreeting to persuade turbo to write {{user}}'s message in the first post it generates, but if we don't want it to actually be posted by {{user}} in the story, we revert the border to transparent. */
  border-left-color: transparent;

  /* the two properties below makes it into an op post. remove if you want it to be a regular post */
  background: none;
  grid-template-areas: 'figure header' 'figure article'; /* layout tweak */
  border: none;
}
#post-117980402 header span::before {
  /* this adds an op subject. remove if you want the first post to not be an op */
  content: var(--subject);
  color: var(--subject-color);
  margin-right: .5em;
}
#post-117980402 figure { padding: 0; } /* layout tweak */


/* frontend specific tweaks */

/* disable >>links on all but st, since on st they re-open st on a new tab causing errors */
.imageboard a { pointer-events: none; }
:not(.mes-text) .imageboard a { pointer-events: auto; }

/* venus tweak or every line break in the html markup will be converted to <br /> */
.display-linebreak { white-space: unset; }
```