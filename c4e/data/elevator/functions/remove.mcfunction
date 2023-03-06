execute if entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] run tag @e[type=armor_stand,tag=elev_marker,distance=..0.5,limit=1,sort=nearest] add kill
execute if entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] run tag @s add kill
execute if entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] run summon item ~ ~ ~ {Motion: [0.0d, 0.25d, 0.0d], Item: {id: "minecraft:bat_spawn_egg", Count: 1b, tag: {display: {Name: '{"translate":"custom.elevator.item.elevator_cage","italic":false}'}, HideFlags: 1, CustomModelData: 10003, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}], EntityTag: {id: "minecraft:armor_stand", Marker: 1b, CustomNameVisible: 0b, NoGravity: 1b, Invisible: 1b, NoBasePlate: 1b, PersistenceRequired: 1b, Tags: ["elev", "elev_marker", "new"], ArmorItems: [{}, {}, {}, {id: "command_block", Count: 1b, tag: {CustomModelData: 10000}}], CustomName: '{"text":""}', Rotation: [0f, 0f]}}}, PickupDelay: 10s}

execute unless entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] run tag @s add kill
execute unless entity @e[type=armor_stand,tag=elev_marker,distance=..0.5] run summon item ~ ~ ~ {Motion: [0.0d, 0.25d, 0.0d], Item: {id: "minecraft:bat_spawn_egg", Count: 1b, tag: {display: {Name: '{"translate":"custom.elevator.item.empty_elevator_cage","italic":false}'}, CustomModelData: 10001, EntityTag: {id: "minecraft:armor_stand", NoGravity: 1b, Small: 1b, Marker: 1b, Invisible: 1b, NoBasePlate: 1b, PersistenceRequired: 1b, Tags: ["elev", "elev_remove"]}}}, PickupDelay: 10s}


particle minecraft:dust 0.5 0.5 0.5 1.5 ~ ~0.4 ~ 0.125 0.0625 0.125 100 10
playsound minecraft:custom.elevator.remove master @a[distance=..10] ~ ~ ~ 100 2
