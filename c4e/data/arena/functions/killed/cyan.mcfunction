#player, who was killed (@s), is in team cyan:

#visuals
particle minecraft:dust 0 0.9 0.9 2 ~ ~1 ~ 0.25 0.5 0.25 0 50 normal

#sounds
execute as @a[predicate=!arena:in_arena_team,predicate=arena:near_arena_or_entrance] run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 0.5 1
execute as @a[team=arena_cyan] at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0.5

#message
execute if entity @s[tag=tmp] run tag @s remove tmp

execute if score @s killed_by_red matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.red","color":"dark_red"}], "color":"gold"}
execute if score @s killed_by_red matches 1.. run tag @s add tmp
execute if score @s killed_by_green matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.green","color":"dark_green"}], "color":"gold"}
execute if score @s killed_by_green matches 1.. run tag @s add tmp
execute if score @s killed_by_blue matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.blue","color":"blue"}], "color":"gold"}
execute if score @s killed_by_blue matches 1.. run tag @s add tmp
execute if score @s killed_by_yellow matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.yellow","color":"yellow"}], "color":"gold"}
execute if score @s killed_by_yellow matches 1.. run tag @s add tmp
execute if score @s killed_by_cyan matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.own","with":[{"selector":"@s","color":"aqua"}], "color":"gold"}
execute if score @s killed_by_cyan matches 1.. run tag @s add tmp
execute if score @s killed_by_purple matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.purple","color":"dark_purple"}], "color":"gold"}
execute if score @s killed_by_purple matches 1.. run tag @s add tmp
execute if score @s killed_by_pink matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.other","with":[{"selector":"@s","color":"aqua"},{"translate":"color.minecraft.pink","color":"light_purple"}], "color":"gold"}
execute if score @s killed_by_pink matches 1.. run tag @s add tmp

execute unless entity @s[tag=tmp] run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.killed_by.generic","with":[{"selector":"@s","color":"aqua"}], "color":"gold"}

execute if entity @s[tag=tmp] run tag @s remove tmp

#new items
function arena:join_team/cyan
