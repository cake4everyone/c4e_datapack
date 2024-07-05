function #c4e_lib:loop

scoreboard players add @s c4e_lib_loop_count 1
execute if score @s c4e_lib_loop_count < @s c4e_lib_loop_max run function c4e_lib:loop/loop
