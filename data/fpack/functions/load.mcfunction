# dummy objectives for Ice Boat Racetrack operation
scoreboard objectives add boat.valid_lap dummy
scoreboard objectives add boat.sector_counter dummy
scoreboard objectives add boat.lap_t0 dummy
scoreboard objectives add boat.lap_t1 dummy
scoreboard objectives add boat.t0 dummy
scoreboard objectives add boat.t1 dummy
scoreboard objectives add boat.t_minutes dummy
scoreboard objectives add boat.t_seconds dummy
scoreboard objectives add boat.t_ms dummy
scoreboard objectives add boat.delta dummy
scoreboard objectives add boat.show_sector_time dummy
scoreboard objectives add boat.show_deltas dummy
scoreboard objectives add boat.best_lap_fc dummy
scoreboard objectives add boat.best_lap_lv dummy
scoreboard objectives add boat.best_lap_ef dummy
scoreboard objectives add boat.last_lap dummy
scoreboard objectives add boat.at_racetrack dummy

# dummy objectives for AFK detection
scoreboard objectives add afk.x0 dummy
scoreboard objectives add afk.x1 dummy
scoreboard objectives add afk.z0 dummy
scoreboard objectives add afk.z1 dummy
scoreboard objectives add afk.y0 dummy
scoreboard objectives add afk.y1 dummy
scoreboard objectives add afk.counter dummy

team add afk.afk_team "AFK Players"
team modify afk.afk_team color dark_aqua
team modify afk.afk_team prefix "[AFK] "
team add afk.active_team "Active Players"
team modify afk.active_team color green

# dummy objectives for death tracking
scoreboard objectives add tsd.ticks minecraft.custom:minecraft.time_since_death
scoreboard objectives add tsd dummy
scoreboard objectives add tsd.hours dummy
scoreboard objectives setdisplay list tsd.hours

# dummy objectives for XP bottling
scoreboard objectives add xp.count xp

# constants
scoreboard objectives add consts dummy
scoreboard players set 1200 consts 1200
scoreboard players set 20 consts 20
scoreboard players set 50 consts 50
scoreboard players set 72000 consts 72000
scoreboard players set 0 consts 0
scoreboard players set 8 consts 8

# racetrack records
# FCorp International Circuit: 1:19.2
scoreboard players set IceBoatRecords boat.best_lap_fc 1584 
# Lago Verde Speedway: 1:30.15
scoreboard players set IceBoatRecords boat.best_lap_lv 1803
# Earthflax Tower Drift Course: Not yet set
scoreboard players set IceBoatRecords boat.best_lap_ef 72000