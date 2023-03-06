scoreboard players enable @a[tag=streamer] live
execute as @a[team=!live] if score @s live matches 1.. run tag @s add join
execute as @a[team=live] if score @s live matches 1.. run function c4e:live/go_offline
execute as @a[team=!live,tag=join] if score @s live matches 1.. run function c4e:live/go_online
tag @a[tag=join] remove join

#reset trigger
execute as @a if score @s live matches 1.. run scoreboard players reset @s live

execute as @a[team=live] if score @s leave matches 1.. run team leave @s
