function c4e:live
function c4e:trigger

execute as @a if score @s leave matches 1.. run scoreboard players reset @s leave

execute as @a[gamemode=survival] at @s if predicate c4e:in_spawn run gamemode adventure @s
execute as @a[gamemode=adventure] at @s unless predicate c4e:in_spawn run gamemode survival @s
