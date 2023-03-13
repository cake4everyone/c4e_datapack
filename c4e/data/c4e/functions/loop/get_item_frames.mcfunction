###
### This function is part of the item_frame trigger and will run will run n times in a loop, where n is defined by the user who executes the trigger
### E.g.: '/trigger item_frame set|add 7' means n = 7.
###
### Theres also an early break detection. When there is only 5 item frames in range, but the user executed '/trigger item_frame set|add 50', this
### function detects that there is no more item frame on the 6th iteration and breaks out of the loop
###
### Reference points are:
### @s:  Player who executed the trigger
### pos: at @s
###

execute as @e[type=#c4e:item_frames,tag=!modify,distance=..10,limit=1,sort=nearest] run tag @s add modify

# Functionally a kind of "break" in a loop. Increase the count to max, to not loop further.
# But only if there is no un modified item_frames
execute store result score @s tmp if entity @e[type=#c4e:item_frames,tag=modify,distance=..10]
execute if score @s c4e_lib_loop_count >= @s tmp run scoreboard players operation @s c4e_lib_loop_count = @s c4e_lib_loop_max
