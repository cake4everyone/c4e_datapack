
execute unless entity @s[tag=arena_near_join] run title @s times 10 20 20
execute unless entity @s[tag=arena_near_join] run title @s subtitle {"translate":"arena.message.join_prompt", "with":[{"keybind":"key.jump"},{"selector":"@e[type=armor_stand,tag=arena_join,limit=1,sort=nearest]"}]}
execute unless entity @s[tag=arena_near_join] run title @s title ""
execute unless entity @s[tag=arena_near_join] run tag @s add arena_near_join


execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=red] run function arena:join_team/red
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=red] unless entity @s[team=arena_red] run particle dust 0.7 0 0 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=green] run function arena:join_team/green
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=green] unless entity @s[team=arena_green] run particle dust 0 0.7 0 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=blue] run function arena:join_team/blue
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=blue] unless entity @s[team=arena_blue] run particle dust 0.2 0.2 1 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=yellow] run function arena:join_team/yellow
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=yellow] unless entity @s[team=arena_yellow] run particle dust 0.85 0.9 0 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=cyan] run function arena:join_team/cyan
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=cyan] unless entity @s[team=arena_cyan] run particle dust 0 0.9 0.9 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=purple] run function arena:join_team/purple
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=purple] unless entity @s[team=arena_purple] run particle dust 0.6 0 1 .8 ~ ~1 ~ .25 .5 .25 1 5 normal
execute if score @s arena_join_trigger matches 1.. if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=pink] run function arena:join_team/pink
execute if entity @e[type=minecraft:armor_stand,tag=arena_join,distance=...75,tag=pink] unless entity @s[team=arena_pink] run particle dust 0.9 0.2 0.9 .8 ~ ~1 ~ .25 .5 .25 1 5 normal

effect give @s minecraft:jump_boost 1 251 true
execute if score @s arena_join_trigger matches 1.. align y run tp ~ ~ ~
