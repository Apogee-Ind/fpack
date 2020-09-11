# call as the following:
# execute as @a[x=1,dx=1,y=1,dy=1,z=1,dz=1,scores={valid_lap=1}] run function fpack:get_s1_time

scoreboard players set @s s1_complete 1
execute as @s if score @s show_sectime matches 1 run function fpack:get_sectime
execute as @s if score @s show_sectime matches 1 run tellraw @s [{"text":"Sector 1: "},{"score":{"name":"@s","objective":"sectime_m"}},{"text":"m "},{"score":{"name":"@s","objective":"sectime_s"}},{"text":"s "},{"score":{"name":"@s","objective":"sectime_ms"}},{"text":"ms"}]
execute store result score @s sectime_old run time query gametime