function c4e:live
function c4e:trigger

execute as @a if score @s leave matches 1.. run scoreboard players reset @s leave

execute as @a[gamemode=survival] at @s if predicate c4e:in_spawn run function c4e:spawn/enter
execute as @a[gamemode=adventure] at @s unless predicate c4e:in_spawn run function c4e:spawn/leave

execute as @e[predicate=c4e:is_bad_at_spawn] at @s run tp ~ -100 ~
