# General Overview

Citrus Doom is made of 5 parts, 2 of which don't even run in stormworks and are purely for pre-processing

The Level Viewer and wad_data.py load the Doom WADs (and some extra text files) and converts them into property text boxes, which are then (along with the compressed lua code) combined with base_doom.xml to get a complete Stormworks vehicle file

All the lua blocks load the entirety of the asset data stored in the text boxes, and have their own internal idea of what is going on

engine.lua handles the main game engine and takes input from the vehicle's HOTAS seat. It then feeds updates (e.g. changes to the player, monsters, sectors) to the other two blocks via a composite link (a set of 32 numbers and booleans that gets sent every Stormworks tick)

render.lua does all of the "3D" rendering, and to save on bandwidth it will automatically move projectiles in space and objects through their animation frames. The way it renders walls is strange and is purely to take advantage of the draw calls available in Stormwork's Lua implementation

sound.lua does all the sound and HUD. Its purpose is to reduce the amount of code needed in the other two blocks by rendering as much as much as possible with as little work from engine.lua as possible. For example, the item pickup text and sound is triggered by noticing a deletion event for a pickupable item

# Data Storage

All asset data is stored as packeted numbers in property text boxes within the vehicle's microcontroller. Each text box stores a maximum of 8192 characters/bytes, with the overal vehicle size limit of 8MB effectively capping the number of text boxes. The end of each number is denoted by a matching letter (e.g. 15 would be written as 1E, 1 would be written as A), but for readability commas will be used here. Packets have a 3 number header:

1. Position in (M)emory to insert the chunks
2. Length of each chunk
3. Number of chunks

So a packet with header 5,3,4 will have 12 numbers after it, and will be inserted at the end of M[5]. Assuming it was the first thing in M\[5\], its 2nd value can be accessed from M\[5\]\[1\]\[2\]

M\[1] to M\[10] is the current level, and is where other levels are "moved" to during runtime (nothing starts in M\[1] to M\[10]). All levels are stored from M\[30] onwards and have similar indexing (e.g. 3rd level starts at M\[51]). All but Sector Thinkers are normal Doom level contents. M\[11] to M\[19] and M\[29] are for miscellaneous data, M\[20] to M\[25] is for graphics

1. Things
2. Linedefs
3. Sidedefs
4. Vertexes
5. Segments
6. Sub-Sectors
7. BSP nodes
8. Sectors
9. Sector thinkers
10. Blockmap
11. Health pickup attributes
12. Ammo pickup attributes
13. Random and fuzz tables
14. Weapon attributes (includes monster weapons)
15. Object spawn attributes
16. Object states
17. Object rotation frames
18. Sounds
19. Misc data
20. Colourmap
21. Wall textures
22. Floor textures
23. Sprite textures
24. Sky textures
25. Loadscreen logo
26. unused
27. unused
28. unused
29. Weapon states

Note that 20 and 25 are positioned first so that the logo can be displayed after loading the first few text boxes