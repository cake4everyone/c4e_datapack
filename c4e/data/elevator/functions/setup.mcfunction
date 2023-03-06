scoreboard objectives remove elev_jump
scoreboard objectives remove elev_sneak

scoreboard objectives add elev_jump minecraft.custom:minecraft.jump
scoreboard objectives add elev_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add elev_timeout dummy


scoreboard players add maxValue elev_timeout 0
#scoreboard players remove maxValue elev_timeout 1
execute unless score maxValue elev_timeout > 0 math run scoreboard players set maxValue elev_timeout 100
scoreboard players reset test elev_timeout
