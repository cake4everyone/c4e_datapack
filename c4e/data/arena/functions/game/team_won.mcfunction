scoreboard players set timer arena_board 100
scoreboard players set gamephase arena_board 3

title @a[tag=arena_ingame] times 20 40 40
title @a[tag=arena_ingame] subtitle {"translate":"arena.message.game_end.won2","color":"gold"}
title @a[tag=arena_ingame,team=arena_red] title {"translate":"arena.message.game_end.won","color":"dark_red"}
title @a[tag=arena_ingame,team=arena_green] title {"translate":"arena.message.game_end.won","color":"dark_green"}
title @a[tag=arena_ingame,team=arena_blue] title {"translate":"arena.message.game_end.won","color":"blue"}
title @a[tag=arena_ingame,team=arena_yellow] title {"translate":"arena.message.game_end.won","color":"yellow"}
title @a[tag=arena_ingame,team=arena_cyan] title {"translate":"arena.message.game_end.won","color":"aqua"}
title @a[tag=arena_ingame,team=arena_purple] title {"translate":"arena.message.game_end.won","color":"dark_purple"}
title @a[tag=arena_ingame,team=arena_pink] title {"translate":"arena.message.game_end.won","color":"light_purple"}
execute as @a[tag=arena_ingame] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 .8

execute if score &red arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.red","color":"dark_red"}]}
execute if score &green arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.green","color":"dark_green"}]}
execute if score &blue arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.blue","color":"blue"}]}
execute if score &yellow arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.yellow","color":"yellow"}]}
execute if score &cyan arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.cyan","color":"aqua"}]}
execute if score &purple arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.purple","color":"dark_purple"}]}
execute if score &pink arena_board matches 1.. run tellraw @a[predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_end", "with":[{"translate":"color.minecraft.pink","color":"light_purple"}]}
