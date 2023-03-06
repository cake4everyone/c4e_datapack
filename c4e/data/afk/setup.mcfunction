team add afk
team modify afk color gray
team modify afk nametagVisibility hideForOtherTeams
team modify afk prefix {"text":"AFK - ","color":"gray"}

scoreboard objectives add afk.pos.x dummy
scoreboard objectives add afk.pos.y dummy
scoreboard objectives add afk.pos.z dummy
scoreboard objectives add afk.yaw dummy
scoreboard objectives add afk.pitch dummy
scoreboard objectives add afk.pos.x_new dummy
scoreboard objectives add afk.pos.y_new dummy
scoreboard objectives add afk.pos.z_new dummy
scoreboard objectives add afk.yaw_new dummy
scoreboard objectives add afk.pitch_new dummy
execute store result score @s afk.pos.x run data get entity @s Pos[0] 1000000
execute store result score @s afk.pos.y run data get entity @s Pos[1] 1000000
execute store result score @s afk.pos.z run data get entity @s Pos[2] 1000000
execute store result score @s afk.yaw run data get entity @s Rotation[0] 1000000
execute store result score @s afk.pitch run data get entity @s Rotation[1] 1000000

function afk:schedule_30s
