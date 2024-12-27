# fpack
Core datapack of the Ice Boat SMP.
Fpack is the work of Frijoles_, with contributions from authors of Vanilla Tweaks, *insert other packs here*

This datapack is an agglomeration of multiple namespaced modules that, while functionally independent, share some code related to loading and ticking functions. For that reason, only certain folders can be deleted by users who only want part of fpack's functionality. The modules are as follows:
* `data/end2`
* `data/fpack`
* `data/iceboat`

## Module Description
### End 2
End 2 is a clone of Ice Boat SMP's end dimension as it existed just prior to the 1.18 update. End 2 was created as a place for Dragon fights, Wither killing, and End City raiding that wouldn't interfere with or damage the new End Hub, located in the vanilla End dimension. Prior to 1.19, the Ender Dragon re-summoning process worked normally in any End-type dimension. However, this no longer is the case. To allow the End Hub to remain in the vanilla End dimension, fpack implements a re-creation of the Dragon fight sequence in End 2, accessed via the normal re-summoning mechanic. The `end2` namespace contains the files related to the Dragon fight. For backwards compatibility reasons, End 2's dimension file is stored under the `fpack` namespace.

### Fpack Core
The `fpack` namespace contains several utility and convenience functions. 
1. Playtime tracking & role management
    a. Determines if you're away from keyboard/not moving (AFK)
    b. Tracks your playtime and how long it's been since you died, exlcuding AFK time
    c. Assigns a score for the appropriate playtime role to be awarded in the next month
    d. Assigns teams and sends chat messages to communicate AFK status
2. Server Currency (Cryo):
    a. Distributes playtime-based Cryo to players based on their role
    b. OP-accessible functions for creating, destroying, compacting, and de-compacting Cryo
3. XP Bottling: Stand on an enchanting table to convert your XP into Bottles o' Enchanting.
4. Dimension change messages & End Hub teleporters: Send messages in chat when players change dimensions.
Scheduled functions (running every second, or at other intervals) are contained in the `fpack` namespace.

### Ice Boat
The `iceboat` namespace contains everything needed to set up lap/sector timers, track limits detection, track records, and other features for ice boat racetracks. Most of the functions in this module must be called by command blocks placed in the world. Each of these functions contains a comment with the command needed to call it.

## New in Version 61.0 (for Minecraft 1.21.4)
1. 

