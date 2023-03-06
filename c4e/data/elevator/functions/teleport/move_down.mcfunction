execute unless entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] as @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] run tp ~ ~-1 ~

scoreboard players add @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] elev_timeout 1
execute as @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] if score @s elev_timeout > maxValue elev_timeout run kill @s

execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] at @s run particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 0.0001 300
execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] at @s run playsound minecraft:custom.elevator.use master @a[distance=..10] ~ ~1 ~ 0.5
execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] run tp @s @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1]
execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] at @s run playsound minecraft:custom.elevator.use master @a[distance=..10] ~ ~1 ~ 0.5
execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] at @s run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0.01 300
execute if entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] run kill @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1]

execute unless entity @e[type=armor_stand,sort=nearest,tag=elev_marker,limit=1,distance=..0.5] at @e[type=minecraft:armor_stand,tag=elev_move,limit=1,sort=nearest] align xz positioned ~0.5 ~ ~0.5 run function elevator:teleport/move_down
