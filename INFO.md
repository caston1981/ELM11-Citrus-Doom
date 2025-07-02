# General Overview

Citrus Doom is made of 5 parts, 2 of which don't even run in stormworks and are purely for pre-processing

The Level Viewer and wad_data.py load the Doom WADs (and some extra text files) and converts them into property text boxes, which are then (along with the compressed lua code) combined with base_doom.xml to get a complete Stormworks vehicle file

Lua blocks have a maximum code size of 8192 characters, which necessitates code miniaturisation and multiple lua blocks. All the lua blocks load the entirety of the asset data stored in the text boxes, and have their own internal idea of what is going on

engine.lua handles the main game engine and takes input from the vehicle's HOTAS seat. It then feeds updates (e.g. changes to the player, monsters, sectors) to the other two blocks via a composite link (a set of 32 numbers and booleans that gets sent every Stormworks tick)

render.lua does all of the "3D" rendering, and to save on bandwidth it will automatically move projectiles in space and objects through their animation frames. The way it renders walls is strange and is purely to take advantage of the draw calls available in Stormwork's Lua implementation

sound.lua does all the sound and HUD. Its purpose is to reduce the amount of code needed in the other two blocks by rendering as much as much as possible with as little work from engine.lua as possible. For example, the item pickup text and sound is triggered by noticing a deletion event for a pickupable item

# Data Storage

All asset data is initially stored as packeted numbers in property text boxes within the vehicle's microcontroller, and is loaded into the variable M. Each text box stores a maximum of 8192 characters/bytes, with the overal vehicle size limit of 8MB effectively capping the number of text boxes. The text from a text box can be read with property.getText("box name")

Numbers were stored as comma separated values, but to save space the commas have been removed. The end of each number is denoted by a matching letter (e.g. 15 would be written as 1E, 1 would be written as A), but for readability commas will be used here. Packets have a 3 number header:

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

# Rendering

Stormworks monitors are 32x32 per block, and since the largest monitor is 9x5 blocks, the highest resolution is 288x160. Monitors are drawn to in the onDraw() function of a given lua block, which is called every Stormworks tick per connected monitor (in this case once). Draw calls in onDraw() draw to a write-only buffer which is then displayed in the gameworld. Several lua blocks can be connected in sequence, and those later in the chain draw over the image produce by earlier block(s)

Appart from some oddball calls that aren't useful here, all draw calls are monochrome and are coloured based on the most recent setColor() call. The relevant draw calls are drawRectF(x,y,w,h) which draws a filled rectangle, drawTriangleF(x1,y1,x2,y2,x3,y3) which draws a filled triangle, drawLine(x1,y1,x2,y2) which draws a line excluding the endpoint, and drawText(x,y,"text") which draw a 4x5 monospaced font with 1 pixel spacing between characters

These draw calls each have a (mostly) fixed overhead, and lua isn't especially fast to begin with, so drawing as much as possible with each call is ideal. Doom's normal rendering avoids overdraw whenever possible by doing a lot of per-pixel checking. This makes sense, since it needs to draw to each pixel individually anyways. Because that is not the case here, overdraw is common

Every subsector is processed front to back in onTick(), then drawn to the screen back to front in onDraw(). When drawing a given subsector, walls are drawn first, then flats, then objects/sprites

Wall rendering is done by the texel (texture pixel) as one setColor() and two drawTriangleF() calls. This is much faster than normal rendering when a texel takes up more than a few pixels on the screen, which is helped at long distances by mipmapping. Floating middle textures are drawn identically to other walls

Flats are drawn fairly normally, but to improve performance they can be drawn at half the normal horizontal resolution or as monochrome lines. Note that the sky is drawn is always drawn and is drawn first, and flats marked as sky aren't rendered and let the sky show through

Objects/sprites within a given subsector are sorted based on distance to the player. They are drawn as simple grids of drawRectF() calls. Since they are drawn with the subsector they are in, any part of them which is sticking out of the subsector can later be overwritten when it shouldn't, or visible when it shouldn't be (though the latter is rare)

# Game Engine

Because the entire game engine needs to fit into a single 8192-character-sized lua block, all the code is made do be as multi-purpose as possible by leaving the specific details to the asset data. I have nothing good to say about the game engine (other than that it works), so this section will just be detailing the compromises in it

The normal list of object states is implemented, but the actions that can be taken have been simplified. Every monster's (or player) attacks are either hitscan or projectile, which means Pinkies can accidentally attack other demons and Lost Souls fire a copy of themselves then delete the original via an edited state list. The chase code has no memory of which direction a monster was heading last, so it can change direction every walk movement when its target isn't in one of the 8 key directions, which looks weird and gives it a hard time finding its way around obstacles more complex than a pillar

Collision checks only check the blockmap block the object's origin is in. To reduce wall weirdness, wad_data.py adds every linedef from the neibouring 8 blocks to a given block. The same can't be done for objects as they update their blockmap position in real time, which can sometimes be noticed when trying to pick up an item near the edge of a block

Collision checks are also done with cylindrical colliders for objects because I didn't want to figure out exactly how normal Doom does it

The line-of-sight checking function checks a singular line between the points 32 units above the passed positions. As it saved space and didn't have a massive impact during my testing, line-of-sight checks completely ignore the blockmap and simply check every linedef (or for situations where what it hits doesn't matter, every linedef until it finds one that blocks it)

### Thinkers

Linedef specials (doors, lifts, teleporters) are done using pre-calculated thinkers. Each thinker specifies

1. What sector to effect
2. What value in the sector to change
3. What it should change it to
4. The maximum change per tick that can be done
5. The end delay before triggering the next thinker
6. The next thinker (0 if none)
7. What to replace the triggered linedef's type with (0 for use-once triggers)
8. Thinker to create when this one is created (0 if none)

The linedef's type specifies if it's a normal useable (1), a walkover (2), or a keyed usable (14-16). If the sector value is 0 then it will default to the object which is interacting with the linedef, which is used for teleporters. This system is simple enough to be done with little lua code, and versatile enough for most specials to be accurately pre-compiled by wad_data.py. It is not perfect, and some come out worse than others, but Doom 1's usage of specials is quite basic so it never 100% breaks a level