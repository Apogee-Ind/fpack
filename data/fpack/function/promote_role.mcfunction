$team join $(role) @s
tag @s remove Boater
tag @s remove Frostwalker
tag @s remove Voidrifter
tag @s remove Cyberman
$tag @s add $(role)
$tellraw @a [{"text":"With "},{"score":{"name":"@s", "objective":"playtime.hours"} },{"text":" hours of platime,"},{"selector":"@s"},{"text":" has attained the rank of "},{"text":"$(role)"}]
