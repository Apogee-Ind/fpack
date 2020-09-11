# fpack
Functions for ice boat racetrack lap timer

Contained in this datapack:
- lap timer (requires use of the sector timers, but not of track limits)
- sector timers, for a racetrack divided into 3 sectors
- track limits detection (will delete your laptime when activated)
- boat particle trails
- scoreboard objective for hours since death

Only 1 ticking function is included, it is used to calculate hours since death using the game's builtin time since death statistic.
Everything else must be activated using `/execute ... run` via a command block. You will need to enable command blocks and put yourself into creative to place/edit them.
Most of the functions have a commented line with the command needed in the command block to run them. For ones with volumetric selector arguments, set the volume to encompass the tripwire over the racetrack.
