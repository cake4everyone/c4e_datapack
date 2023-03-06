function #c4e_lib:loop_mode

scoreboard players add @s loop_count 1
execute if score @s loop_count < @s loop_max run function c4e_lib:loop/loop
