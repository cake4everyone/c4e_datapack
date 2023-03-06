tag @s add arena_waiting

execute if entity @s[team=arena_red] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.red","color":"dark_red"}]}
execute if entity @s[team=arena_red] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.red","color":"dark_red"}]}
execute if entity @s[team=arena_green] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.green","color":"dark_green"}]}
execute if entity @s[team=arena_green] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.green","color":"dark_green"}]}
execute if entity @s[team=arena_blue] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.blue","color":"blue"}]}
execute if entity @s[team=arena_blue] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.blue","color":"blue"}]}
execute if entity @s[team=arena_yellow] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.yellow","color":"yellow"}]}
execute if entity @s[team=arena_yellow] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.yellow","color":"yellow"}]}
execute if entity @s[team=arena_cyan] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.cyan","color":"aqua"}]}
execute if entity @s[team=arena_cyan] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.cyan","color":"aqua"}]}
execute if entity @s[team=arena_purple] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.purple","color":"dark_purple"}]}
execute if entity @s[team=arena_purple] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.purple","color":"dark_purple"}]}
execute if entity @s[team=arena_pink] unless score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena", "with":[{"translate":"color.minecraft.pink","color":"light_purple"}]}
execute if entity @s[team=arena_pink] if score gamephase arena_board matches 2 run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game", "with":[{"translate":"color.minecraft.pink","color":"light_purple"}]}
execute as @a[predicate=arena:near_arena_or_entrance] unless score gamephase arena_board matches 2 unless entity @s[tag=arena_ingame,tag=arena_waiting] run tellraw @s {"translate":"arena.message.leave_game.left_arena.public", "with":[{"selector":"@p[tag=arena_ingame,tag=arena_waiting]"}]}
execute as @a[predicate=arena:near_arena_or_entrance] if score gamephase arena_board matches 2 unless entity @s[tag=arena_ingame,tag=arena_waiting] run tellraw @s {"translate":"arena.message.leave_game.left_arena.while_game.public", "with":[{"selector":"@p[tag=arena_ingame,tag=arena_waiting]"}]}

tag @s remove arena_ingame

#resetting timer
execute if score timer arena_board matches 1..199 run scoreboard players set timer arena_board 200

function arena:game/player_update
