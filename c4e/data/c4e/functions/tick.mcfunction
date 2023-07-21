function c4e:live
function c4e:trigger

execute as @a if score @s leave matches 1.. run scoreboard players reset @s leave
execute as @a if score @s c4e_lib_sneak matches 1.. run scoreboard players reset @s sneak
