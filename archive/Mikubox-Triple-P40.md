Mikubox Triple-P40 build
- Dell T7910 "barebones" off ebay which includes the heatsinks. I recommend the "digitalmind2000" seller as they foam-in-place so the workstation arrives undamaged.
- Your choice of Xeon - I used 2x E5-2680 V4, it was $30 for the pair
- 8 sticks of DDR4 2400 RAM. Use 8, it fills out all the memory channels.
- a Crucial MX500 SSD. While a PCIe M.2 adapter would be nice, you won't have room for it
- a cheap-shit, passive-cooled, single-slot GTX video card. You just need it to POST and initial setup
- 3x P40s plus the power adapter cables
- 3x 27" 2011 iMac GPU fans BFB0812HD. Power them with vampire taps off the 12v and gnd wires on the power adapter cables. Attach to the GPUs with foil duct tape.

There you go, for about $1K you can now run 70B at 8192 context and 6-bits.
70B, 6_K, 8192 context is about 4 t/s. Drop to 4096 context it's about 6 t/s.
Usually around 650W, though I've seen it go above 750W. I don't think I've ever seen GPU0 go above 200W, and the other GPUs are usually in below 100W.
https://desuarchive.org/g/thread/96474796/#q96475926


![p40 build](https://desu-usergeneratedcontent.xyz/g/image/1696/62/1696621188185.jpg)

Alright, picrel is the finished triple P40 build.
IT IS DESKTOP QUIET
Yes there is the sound of rushing air, but no whizzing fan noise. You could sit next to this and not go crazy.
Key points: make sure the screen side of the fan faces the power input - this makes it less likely the fan will scrub the wires, though where the two cards are close, you will have to diddle with it a bit to prevent it anyway; I needed to use tin snips to cut and bend the metal on the optical drive tray to make it so the top GPU would mount.
That's it. I think this is the quietest, cheapest, least-bullshit way to run three P40 cards.
https://desuarchive.org/g/thread/96474796/#q96481998