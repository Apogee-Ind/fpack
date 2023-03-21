# fpack
Datapack powering custom dimensions of the Ice Boat SMP.

If you were following this repo for the ice boat racing functions, you can safely delete the `dimension` and `dimension_type` folders in `data/fpack` and the `worldgen` folder in `data/minecraft`.

## Features:
1. Six custom dimensions, including 5 player dimensions (for preservation of our old pre-1.17 bases) and an auxiliary End dimension for dragon fights.
2. Integrated AFK detector based on Vanilla Tweaks
3. Custom scoreboard for tracking hours since death
4. Functions for ice boat racetrack operation (lap timer, sectors, track limits detection)

## New in Version 0.13 (for Minecraft 1.19.4)
1. Lap deltas: game will now display your delta from the previous lap above your hotbar when you complete a lap
2. Variable sector count: the expected sector count is now controlled by the calling command block, meaning you can have an arbitrary number
3. Added AFK detector
4. Hours since death scoreboard will no longer include AFK time
5. Removed ticking functions in favor of `schedule`. The hours since death scoreboard now updates every second.

