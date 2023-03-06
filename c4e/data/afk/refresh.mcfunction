execute store result score @s afk.pos.x_new run data get entity @s Pos[0] 1000000
execute store result score @s afk.pos.y_new run data get entity @s Pos[1] 1000000
execute store result score @s afk.pos.z_new run data get entity @s Pos[2] 1000000
execute store result score @s afk.yaw_new run data get entity @s Rotation[0] 1000000
execute store result score @s afk.pitch_new run data get entity @s Rotation[1] 1000000

tellraw @s[tag=debug] [{"color":"green","text":"x           = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.x"}},{"color":"green","text":",\nx_new     = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.x_new"}},{"color":"green","text":",\ny           = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.y"}},{"color":"green","text":",\ny_new     = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.y_new"}},{"color":"green","text":",\nz           = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.z"}},{"color":"green","text":",\nz_new     = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pos.z_new"}},{"color":"green","text":",\nyaw        = "},{"color":"yellow","score":{"name":"@s","objective":"afk.yaw"}},{"color":"green","text":",\nyaw_new  = "},{"color":"yellow","score":{"name":"@s","objective":"afk.yaw_new"}},{"color":"green","text":",\npitch       = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pitch"}},{"color":"green","text":",\npitch_new = "},{"color":"yellow","score":{"name":"@s","objective":"afk.pitch_new"}},{"text":".","color":"green"}]

execute if entity @s[tag=!afk,tag=!sleeping,tag=!no_afk] if score @s afk.pos.x = @s afk.pos.x_new if score @s afk.pos.y = @s afk.pos.y_new if score @s afk.pos.z = @s afk.pos.z_new if score @s afk.yaw = @s afk.yaw_new if score @s afk.pitch = @s afk.pitch_new if entity @s[tag=!sleeping,tag=!no_afk] run tag @s add new_afk
execute if entity @s[tag=afk] unless score @s afk.pos.x = @s afk.pos.x_new run tag @s add old_afk
execute if entity @s[tag=afk] unless score @s afk.pos.y = @s afk.pos.y_new run tag @s add old_afk
execute if entity @s[tag=afk] unless score @s afk.pos.z = @s afk.pos.z_new run tag @s add old_afk
execute if entity @s[tag=afk] unless score @s afk.yaw = @s afk.yaw_new run tag @s add old_afk
execute if entity @s[tag=afk] unless score @s afk.pitch = @s afk.pitch_new run tag @s add old_afk
execute if entity @s[tag=afk] unless entity @s[tag=!sleeping,tag=!no_afk] run tag @s add old_afk

scoreboard players operation @s afk.pos.x = @s afk.pos.x_new
scoreboard players operation @s afk.pos.y = @s afk.pos.y_new
scoreboard players operation @s afk.pos.z = @s afk.pos.z_new
scoreboard players operation @s afk.yaw = @s afk.yaw_new
scoreboard players operation @s afk.pitch = @s afk.pitch_new
