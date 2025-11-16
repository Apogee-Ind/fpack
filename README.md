# fpack
Core datapack of the Ice Boat SMP.
Fpack is the work of Frijoles_, with contributions from authors of Vanilla Tweaks and members of the Ice Boat SMP.

This datapack is an agglomeration of multiple namespaced modules that, while functionally independent, share some code related to loading and ticking functions. For that reason, only certain folders can be deleted by users who only want part of fpack's functionality. The modules are as follows:
* `data/end2`
* `data/fpack`

Currently for just implementing banners
* `data/reishards`

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
2. XP Bottling: Stand on an enchanting table to convert your XP into Bottles o' Enchanting.
3. Dimension change messages & End Hub teleporters: Send messages in chat when players change dimensions.
Scheduled functions (running every second, or at other intervals) are contained in the `fpack` namespace.
4. Ice Boating:
    a. Lap/sector timers for racetracks
    b. Track limits detection
    c. Most of the functions in this module must be called by command blocks placed in the world. Each of these functions contains a comment with the command needed to call it.
5. Support for certain custom item features
    a. Custom banner patterns, as added by contributors to the IBSMP resource pack
    b. Custom jukebox songs, instruments, paintings, and other data-driven elements

### minecraft
The `minecraft` namespace is used for globally modifying the base assets.

### reishards
The `reishards` namespace is for assets made by Rei Shards.  Currently only banner patterns are added.
1. datapack for custom banner pattern.

See the [IPSMP_resource_pack repository](https://github.com/Apogee-Ind/IPSMP_resource_pack) for more details.

## Contributing to Fpack
Fpack is a public repository and you are free to create forks. If you would like collaborator access to the main shared repo, please contact Frijoles_.
Any changes to this repo do not automatically go to the Minecraft server. In order to push an updated datapack to the server, please contact an admin.

If you'd like to test Fpack in singleplayer, please do the following:
1. Select all contents within the repo directory (data, pack.mcmeta, etc), right click, and send to compressed/zipped folder.
2. Cut and paste the newly created zip into the datapacks directory of the specific save (single player world) you'd like to add the datapack to
3. Please do not commit zip files to the repo

## New in Version 88.0 (for Minecraft 1.21.10)
1. Custom item data for Maze of Madness
2. Fixes to lap delta display


