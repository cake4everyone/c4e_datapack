tag @a[tag=c4e_lib_sneak_change] remove c4e_lib_sneak_change

execute as @a[tag=!c4e_lib_sneak] unless predicate arena:in_arena_team if score @s c4e_lib_sneak matches 1.. run tag @s add c4e_lib_sneak_change
execute as @a[tag=!c4e_lib_sneak] unless predicate arena:in_arena_team if score @s c4e_lib_sneak matches 1.. run tag @s add c4e_lib_sneak

execute as @a[tag=c4e_lib_sneak] unless score @s c4e_lib_sneak matches 1.. run tag @s add c4e_lib_sneak_change
execute as @a[tag=c4e_lib_sneak] unless score @s c4e_lib_sneak matches 1.. run tag @s remove c4e_lib_sneak

execute as @a if score @s c4e_lib_sneak matches 1.. run scoreboard players reset @s c4e_lib_sneak

execute as @a[tag=c4e_lib_sneak_change] at @s run function #c4e_lib:sneak_change
