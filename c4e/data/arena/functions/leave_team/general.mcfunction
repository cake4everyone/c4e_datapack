
xp set @s 0 levels
xp set @s 0 points
clear @s

scoreboard players set player forloop 0
execute store result score len_players forloop run data get storage arena:survival_data players

function arena:leave_team/forloop

scoreboard players reset player forloop
scoreboard players reset len_players forloop
scoreboard players reset id forloop

team leave @s
execute if entity @s[tag=arena_ingame] run tag @s remove arena_ingame
execute if entity @s[tag=arena_waiting] run tag @s remove arena_waiting

function arena:game/player_update

#pick new gamemaster if necessary
execute if entity @s[tag=arena_gamemaster] run function arena:game/gamemaster_remove

execute if entity @a[tag=arena_new_gamemaster] as @a[tag=arena_new_gamemaster,limit=1] run function arena:game/gamemaster_update

