# dummy objectives for Ice Boat Racetrack operation
scoreboard objectives add boat.valid_sector dummy
scoreboard objectives add boat.valid_lap dummy
scoreboard objectives add boat.sector_counter dummy
scoreboard objectives add boat.lap_t0 dummy
scoreboard objectives add boat.lap_t1 dummy
scoreboard objectives add boat.t0 dummy
scoreboard objectives add boat.t1 dummy
scoreboard objectives add boat.t_minutes dummy
scoreboard objectives add boat.t_seconds dummy
scoreboard objectives add boat.t_ms dummy
scoreboard objectives add boat.show_sector_time dummy

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
team modify afk.afk_team prefix "[AFK]"

# dummy objectives for death tracking
scoreboard objectives add tsd.ticks minecraft.custom:minecraft.time_since_death
scoreboard objectives add tsd dummy
scoreboard objectives add tsd.hours dummy
scoreboard objectives setdisplay list tsd.hours

# constants
scoreboard objectives add consts dummy
scoreboard players set 1200 consts 1200
scoreboard players set 20 consts 20
scoreboard players set 50 consts 50
scoreboard players set 72000 consts 72000

# 