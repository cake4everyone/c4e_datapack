scoreboard players add @s loop_max 0
scoreboard players set @s loop_count 0

function c4e_lib:loop/loop

scoreboard players reset @s loop_count
scoreboard players reset @s loop_max
scoreboard players reset @s loop_mode
