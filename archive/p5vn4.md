i'll give (You) a step-by-step. pay close attention.

SAMPLING PHASE:
1. render each sample at the max quality setting (512-point sinc). make sure the vowels you're sampling have little-to-no background noise or music.
2. sample more than just the requisite five vowels. preferably around 12 or so samples in total.
3. use newtone to tune them all individually by pressing ctrl+a and clicking the nearest C on the piano roll.
4. click the "file" icon and select "save sample as..." to... well... save the tuned samples. delete samples that don't tune well.
5. stretch remaining ones to desired length using melodyne. emihead shows you how to do this in their tutorial on youtube.

LAYOUT PHASE:
6. lay out all your stretched samples on the playlist in fl studio, copying and pasting as necessary to reach at least 36 notes, or 3 octaves.
7. use the project tempo to make sure each sample has adequate spacing between them.
8. render the whole thing into one audio file.

NEWTONE PHASE:
9. open the rendered audio file in newtone.
10. zoom as far as you can into the first note. newtone always slices a really small portion of the first note. switch to "cut mode" (click the icon that looks like a razor blade), ctrl + drag click to select both the main note and the small bit that was sliced, then shift + click the note to glue them together.
11. use this method to glue together any other notes that may have been weirdly sliced by newtone.
12. switch off cut mode and lay your samples out in chromatic fasion.
13. save your tuned scale.

(there's one more phase but i had to cut it off because it exceeds the character limit so wait a bit for the rest.)
SLICEX PHASE:
14. open the tuned scale in slicex.
15. click the "tools" icon and select "trim all noise & slice up".
16. go through each slice region and make sure image-line's retarded slicing algorithm didn't over- or under-slice anything. if it over-sliced, right click the useless regions and select "delete". if it under-sliced, drag click near the area where the region should be to select it. then, click the "regions" icon and select "add marker...".
17. play each region one-by-one to make sure the slices are adequate. if they aren't, zoom in and manually adjust the problematic slice markers.
18. once all the regions are perfect, click these "tools" options in order:
>declick in all regions
>declick out all regions
>perfect all regions
>normalize all regions
>lossy normalize
19. use the "amp..." option to lower the overall volume of the scale so it's not clipping.
20. save your sliced scale.
