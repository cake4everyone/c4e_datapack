scoreboard objectives remove elev_jump
scoreboard objectives remove elev_sneak

scoreboard objectives add elev_jump minecraft.custom:minecraft.jump
scoreboard objectives add elev_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add elev_timeout dummy

# set the initial distance for elevators, except it is set already
execute unless score maxValue elev_timeout matches 1.. run scoreboard players set maxValue elev_timeout 100
