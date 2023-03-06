execute as @e[type=item,nbt={Item: {id: "minecraft:iron_bars", Count: 4b}},limit=1,sort=nearest] run tag @s add kill
execute as @e[type=item,nbt={Item: {id: "minecraft:obsidian", Count: 4b}},limit=1,sort=nearest] run tag @s add kill
particle minecraft:dust 0.1 0 0.2 1 ~ ~0.4 ~ 0.0625 0.0625 0.0625 1 5
playsound minecraft:custom.elevator.craft master @a[distance=..10] ~ ~ ~ 100 1.6
execute as @p run summon item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", Count: 1b, tag: {display: {Name: '{"translate":"custom.elevator.item.empty_elevator_cage","italic":false}'}, CustomModelData: 10001, EntityTag: {id: "minecraft:armor_stand", NoGravity: 1b, Small: 1b, Marker: 1b, Invisible: 1b, NoBasePlate: 1b, PersistenceRequired: 1b, Tags: ["elev", "elev_remove"]}}}, PickupDelay: 10s}
