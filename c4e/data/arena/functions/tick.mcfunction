
#substract 1 from kill-scoreboard, because an arena kill should not count to global kills
execute as @a if score @s kill_trigger matches 1.. at @s if predicate arena:in_arena_team run scoreboard players remove @s kill 1

#kill every arena item this is laying on the ground
execute as @e[type=item] at @s if predicate arena:is_arena_item run kill @s
#kill every chest or hopper minecart near the arena, so it can't be used to steal items
execute as @e[type=chest_minecart,tag=!locked] at @s if predicate arena:near_arena_or_entrance run function arena:minecart_kill/chest
execute as @e[type=hopper_minecart,tag=!locked] at @s if predicate arena:near_arena_or_entrance run function arena:minecart_kill/hopper

#jump in armor_stand to join team
execute as @a[gamemode=!spectator] at @s if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75] run function arena:join_team/armor_stand_trigger
execute as @a[tag=arena_near_join] at @s unless entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75] run function arena:join_team/armor_stand_trigger_leave

#when an arena player died
execute as @a at @s if score @s death_trigger matches 1.. if predicate arena:in_arena_team run function arena:died

#when a player is at an illegal position
execute as @a at @s if predicate arena:fighter_outside_arena unless predicate arena:in_entranceroom run function arena:fighter_left_arena
execute as @a at @s if predicate arena:invalid_player_in_arena run function arena:player_in_arena

#update gamemodes near arena
execute as @a[gamemode=survival] at @s if predicate arena:near_arena_or_entrance run gamemode adventure @s
execute as @a[tag=!arena_advmode] at @s if predicate arena:near_arena_or_entrance run tag @s add arena_advmode

execute as @a[gamemode=adventure,tag=arena_advmode] at @s unless predicate arena:near_arena_or_entrance run gamemode survival @s
execute as @a[tag=arena_advmode] at @s unless predicate arena:near_arena_or_entrance run tag @s remove arena_advmode

#game
function arena:game

#reset all counter
execute as @a if score @s killed_by_red matches 1.. run scoreboard players reset @s killed_by_red
execute as @a if score @s killed_by_green matches 1.. run scoreboard players reset @s killed_by_green
execute as @a if score @s killed_by_blue matches 1.. run scoreboard players reset @s killed_by_blue
execute as @a if score @s killed_by_yellow matches 1.. run scoreboard players reset @s killed_by_yellow
execute as @a if score @s killed_by_cyan matches 1.. run scoreboard players reset @s killed_by_cyan
execute as @a if score @s killed_by_purple matches 1.. run scoreboard players reset @s killed_by_purple
execute as @a if score @s killed_by_pink matches 1.. run scoreboard players reset @s killed_by_pink
execute as @a if score @s kill_trigger matches 1.. run scoreboard players reset @s kill_trigger

execute as @a if score @s death_trigger matches 1.. run scoreboard players reset @s death_trigger

execute as @a if score @s arena_join_trigger matches 1.. run scoreboard players reset @s arena_join_trigger
