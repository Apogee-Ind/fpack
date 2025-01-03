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
scoreboard objectives add boat.show_sector_time trigger
scoreboard objectives add boat.show_deltas trigger
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

team add afk.afk_team "AFK Players"
team modify afk.afk_team color dark_gray
team modify afk.afk_team prefix "[AFK] "
team add Boater "Boater"
team modify Boater color aqua
team add Frostwalker "Frostwalker"
team modify Frostwalker color dark_aqua
team add Voidrifter "Voidrifter"
team modify Voidrifter color blue
team add Cyberman "Cyberman"
team modify Cyberman color gray

# dummy objectives for time tracking
scoreboard objectives add tsd.seconds dummy
scoreboard objectives add tsd.hours dummy
scoreboard objectives add tsd.actual minecraft.custom:time_since_death
scoreboard objectives setdisplay list playtime.hours
scoreboard objectives add playtime.seconds dummy
scoreboard objectives add playtime.hours dummy
scoreboard objectives add playtime.init dummy

# dummy objectives for XP bottling
scoreboard objectives add xp.count xp

# dummy objectives for End Hub
scoreboard objectives add show_tp_messages trigger
scoreboard objectives add dim.last_visited dummy

# dragon fight setup
bossbar add end2:dragon_bossbar {"text": "Ender Dragon"}
bossbar set end2:dragon_bossbar color pink
bossbar set end2:dragon_bossbar max 200
bossbar set end2:dragon_bossbar players

# constants
scoreboard objectives add consts dummy
scoreboard players set 1200 consts 1200
scoreboard players set 20 consts 20
scoreboard players set 50 consts 50
scoreboard players set 72000 consts 72000
scoreboard players set 3600 consts 3600

# racetrack records
# FCorp International Circuit: 1:19.2
scoreboard players set IceBoatRecords boat.best_lap_fc 1584 
# Lago Verde Speedway: 1:30.15
scoreboard players set IceBoatRecords boat.best_lap_lv 1803
# Earthflax Tower Drift Course: Not yet set
scoreboard players set IceBoatRecords boat.best_lap_ef 72000
