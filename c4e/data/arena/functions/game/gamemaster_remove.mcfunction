#save the rules from the current gamemaster
scoreboard players set player forloop 0
execute store result score len_players forloop run data get storage arena:rules players
function arena:game/gamemaster_remove/forloop
data modify storage arena:rules players prepend value {id: 0, rule: 0}
execute store result storage arena:rules players[0].id int 1 run scoreboard players get @s playerID
execute store result storage arena:rules players[0].rule int 1 run scoreboard players get rule arena_board

#finish up for loop
scoreboard players reset player forloop
scoreboard players reset len_players forloop
scoreboard players reset id forloop



execute unless score @s arenaSpielregeln matches 4 if entity @a[predicate=arena:in_arena_team] run tag @r[predicate=arena:in_arena_team,tag=!arena_gamemaster] add arena_new_gamemaster
execute if score @s arenaSpielregeln matches 4 if entity @a[predicate=arena:in_arena_team] run tag @p[predicate=arena:in_arena_team,tag=!arena_gamemaster] add arena_new_gamemaster
execute unless score @s arenaSpielregeln matches 3..4 if entity @a[tag=arena_new_gamemaster] run tellraw @s {"translate":"arena.rules.gamemaster.left", "with":[{"selector":"@a[tag=arena_new_gamemaster]"}], "color":"red"}
tag @s remove arena_gamemaster