# fpack
_Core datapack of the Ice Boat SMP._
Fpack is the work of Frijoles_, with contributions from authors of Vanilla Tweaks, *insert other packs here*

This datapack is an agglomeration of multiple namespaced modules that, while functionally independent, share some code related to loading and ticking functions. For that reason, only certain folders can be deleted by users who only want part of fpack's functionality. The modules are as follows:
* `data/end2`
* `data/fpack`
* `data/iceboat`

Currently for just implementing banners
* `data/reishards`

## Module Description
### End 2
End 2 is a clone of Ice Boat SMP's end dimension as it existed just prior to the 1.18 update. End 2 was created as a place for Dragon fights, Wither killing, and End City raiding that wouldn't interfere with or damage the new End Hub, located in the vanilla End dimension. Prior to 1.19, the Ender Dragon re-summoning process worked normally in any End-type dimension. However, this no longer is the case. To allow the End Hub to remain in the vanilla End dimension, fpack implements a re-creation of the Dragon fight sequence in End 2, accessed via the normal re-summoning mechanic. The `end2` namespace contains the files related to the Dragon fight. For backwards compatibility reasons, End 2's dimension file is stored under the `fpack` namespace.

### Fpack Core
The `fpack` namespace contains several utility and convenience functions. 
1. Time Since Death leaderboard: Does what the name suggests. Your time since death in hours appears on the tab screen by default. The TSD scoreboard does not count time spent AFK.
2. AFK Detector: Displays a chat message and prepends \[AFK\] to a player's name when they don't move for at least 2.5 minutes.
3. XP Bottling: Stand on an enchanting table to convert your XP into Bottles o' Enchanting.
Scheduled functions (running every second, or at other intervals) are contained in the `fpack` namespace.

### Ice Boat
The `iceboat` namespace contains everything needed to set up lap/sector timers, track limits detection, track records, and other features for ice boat racetracks. Most of the functions in this module must be called by command blocks placed in the world. Each of these functions contains a comment with the command needed to call it.

## New in Version 2.2 (for Minecraft 1.19.4, datapack version 13)
1. Lap deltas: game will now display your delta from the previous lap above your hotbar when you complete a lap
2. Variable sector count: the expected sector count is now controlled by the calling command block, meaning you can have an arbitrary number
3. Added AFK detector
4. Hours since death scoreboard will no longer include AFK time
5. Removed ticking functions in favor of `schedule`. The hours since death scoreboard now updates every second.

## reishards
1. datapack for custom banner pattern.

See the [IPSMP_resource_pack repository](https://github.com/Apogee-Ind/IPSMP_resource_pack) for more details.

