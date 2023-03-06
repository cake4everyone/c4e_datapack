function elevator:floorcrafting

execute as @e[type=armor_stand,tag=elev_remove] if entity @s at @s run function elevator:remove
execute if entity @e[type=armor_stand,tag=elev_marker,tag=new] as @e[type=armor_stand,tag=elev_marker,tag=new] at @s run summon item ~ ~ ~ {Motion: [0.0d, 0.25d, 0.0d], Item: {id: "minecraft:bat_spawn_egg", Count: 1b, tag: {display: {Name: '{"translate":"custom.elevator.item.empty_elevator_cage","italic":false}'}, CustomModelData: 10001, EntityTag: {id: "minecraft:armor_stand", NoGravity: 1b, Small: 1b, Marker: 1b, Invisible: 1b, NoBasePlate: 1b, PersistenceRequired: 1b, Tags: ["elev", "elev_remove"]}}}, PickupDelay: 10s}
execute if entity @e[type=armor_stand,tag=elev_marker,tag=new] as @e[type=armor_stand,tag=elev_marker,tag=new] at @s run particle minecraft:dust 0.5 0.5 0.5 1.5 ~ ~0.4 ~ 0.125 0.0625 0.125 100 10
execute if entity @e[type=armor_stand,tag=elev_marker,tag=new] as @e[type=armor_stand,tag=elev_marker,tag=new] at @s run playsound minecraft:custom.elevator.place master @a[distance=..10] ~ ~ ~ 100 2


execute as @a[scores={elev_sneak=..0},tag=!noSneak] if entity @s run tag @s add noSneak

execute as @a[scores={elev_jump=1..}] at @s if entity @e[type=armor_stand,tag=elev_marker,distance=..1] at @e[type=armor_stand,tag=elev_marker,distance=..1] run function elevator:teleport/up
execute as @a[scores={elev_sneak=1..},tag=noSneak] at @s if entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] at @e[type=armor_stand,tag=elev_marker,distance=..0.5] run function elevator:teleport/down

execute as @a[scores={elev_sneak=1..},tag=noSneak] if entity @s run tag @s remove noSneak

execute as @a[scores={elev_jump=1..}] if entity @s run scoreboard players set @s elev_jump 0
execute as @a[scores={elev_sneak=1..}] if entity @s run scoreboard players set @s elev_sneak 0



#from server:loop
execute as @e[tag=kill] if entity @s run kill @s
execute as @e[tag=new] if entity @s run tag @s remove new
