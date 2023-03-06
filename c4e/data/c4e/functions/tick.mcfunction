function c4e:live
execute unless predicate arena:in_arena_team run function c4e:sneak
function c4e:trigger

#player ID
execute as @a unless score @s playerID matches 1.. run function c4e:new_player_id

execute as @a if score @s leave matches 1.. run scoreboard players reset @s leave
execute as @a if score @s sneak matches 1.. run scoreboard players reset @s sneak
