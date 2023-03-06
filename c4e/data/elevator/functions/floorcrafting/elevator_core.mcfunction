execute as @e[type=item,nbt={Item: {id: "minecraft:ender_pearl", Count: 1b}},limit=1,sort=nearest] run tag @s add kill
execute as @e[type=item,nbt={Item: {id: "minecraft:stone_pressure_plate", Count: 1b}},limit=1,sort=nearest] run tag @s add kill
execute as @e[type=item,nbt={Item: {id: "minecraft:redstone", Count: 2b}},limit=1,sort=nearest] run tag @s add kill
particle minecraft:dust 0.1 0 0.2 1 ~ ~0.4 ~ 0.0625 0.0625 0.0625 1 5
playsound minecraft:custom.elevator.craft master @a[distance=..10] ~ ~ ~ 100 1.6
execute as @p run summon item ~ ~ ~ {Item: {id: "minecraft:command_block", Count: 2b, tag: {display: {Name: '{"translate":"custom.elevator.item.elevator_core","italic":false,"color":"white"}'}, CustomModelData: 10002}}, PickupDelay: 10s}
