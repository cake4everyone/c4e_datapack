
#player ID
execute as @a unless score @s playerID matches 1.. run function c4e_lib:new_player_id

#sneak
execute as @a if score @s c4e_lib_sneak matches 1.. run function #c4e_lib:sneak
execute as @a[team=c4e_lib_sneak] unless score @s c4e_lib_sneak matches 1.. run function #c4e_lib:sneak
execute as @a if score @s c4e_lib_sneak matches 1.. run scoreboard players reset @s c4e_lib_sneak
