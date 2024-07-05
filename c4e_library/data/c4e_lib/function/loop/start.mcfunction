scoreboard players add @s c4e_lib_loop_max 0
scoreboard players set @s c4e_lib_loop_count 0

function c4e_lib:loop/loop

scoreboard players reset @s c4e_lib_loop_count
scoreboard players reset @s c4e_lib_loop_max
scoreboard players reset @s c4e_lib_loop_mode
