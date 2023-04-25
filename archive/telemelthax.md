# Telemelt Hax

If you're using Chrome:

> Click **View** > **Developer** > **Javascript Console**, and paste the following in:

If you're using Firefox:

> Click **Tools** > **Browser Tools** > **Browser Console**, type "allow pasting" and paste the following in:

----

**Horizontal Flip Melt**

```javascript
javascript:document.getElementById("canvas").style.transform="scaleX(-1)"
```

**Spin Melt**

```javascript
document.getElementById("canvas").style.animation="rotation 10s infinite linear";
var cssAnimation = document.createElement('style');
cssAnimation.type = 'text/css';
cssAnimation.innerHTML='@keyframes rotation {from {transform: rotate(0deg); } to { transform: rotate(360deg); }}';
document.getElementsByTagName('head')[0].appendChild(cssAnimation);
```

**Accordion Melt**

```javascript
document.getElementById("canvas").style.animation="rotation 10s infinite linear";
var cssAnimation = document.createElement('style');
cssAnimation.type = 'text/css';
cssAnimation.innerHTML='@keyframes rotation {0% {transform: scaleX(-1);} 50% { transform: scaleX(1); } 100% {transform: scaleX(-1);}}';
document.getElementsByTagName('head')[0].appendChild(cssAnimation);
```

**Energy Crisis Melt**

```javascript
document.getElementById("canvas").style.animation="rotation 2s infinite linear";
var cssAnimation = document.createElement('style');
cssAnimation.type = 'text/css';
cssAnimation.innerHTML='@keyframes rotation {0% {opacity: 1;} 50% { opacity: 0.2; } 100% {opacity: 1;}}';
document.getElementsByTagName('head')[0].appendChild(cssAnimation);
```

**Screen Crunch Melt**
```javascript
javascript:document.getElementById("canvas").style.clipPath="inset(0% 10% 0% 10%)"
```

**Gameboy Melt**
```javascript
javascript:document.getElementById("canvas").style.clipPath="inset(0% 10% 0% 10%)"
javascript:document.getElementById("canvas").style.filter="contrast(450%) grayscale(1)"
```