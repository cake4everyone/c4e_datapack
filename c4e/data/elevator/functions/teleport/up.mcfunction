summon armor_stand ~ ~ ~ {Tags:["elev","elev_move","kill"],Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Small:1b,NoGravity:1b,Small:1b}
tp @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] @s
execute as @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] at @s run tp @s ~ ~1 ~
execute positioned ~ ~1 ~ at @e[type=armor_stand,sort=nearest,tag=elev_move,limit=1] align xz positioned ~0.5 ~ ~0.5 run function elevator:teleport/move_up
