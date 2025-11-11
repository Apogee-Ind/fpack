$team join $(role) @s
tag @s remove Boater
tag @s remove Frostwalker
tag @s remove Voidrifter
tag @s remove Cyberman
$tag @s add $(role)
$tellraw @a ["With ",{"score":{"name":"@s", "objective":"playtime.hours"} }," hours of playtime, ",{"selector":"@s"}," has attained the rank of $(role)"]
