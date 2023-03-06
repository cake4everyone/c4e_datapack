kill @e[type=minecraft:armor_stand,tag=arena_join,tag=red]

execute align xz run summon minecraft:armor_stand ~.5 ~ ~.5 {Tags:["arena_join","red"], ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11141120}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11141120}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:11141120}}},{id:"leather_helmet",Count:1b,tag:{display:{color:11141120}}}], Marker:1b, NoBasePlate:0b, ShowArms:1b, NoGravity:1b,CustomName:'{"translate":"color.minecraft.red","color":"dark_red"}',CustomNameVisible:0b}
