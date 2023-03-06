scoreboard players operation use_shield arena_board = rule arena_board
#scoreboard players operation use_shield arena_board /= #1 arena_board
scoreboard players operation use_shield arena_board %= #2 arena_board

scoreboard players operation use_sword arena_board = rule arena_board
scoreboard players operation use_sword arena_board /= #2 arena_board
scoreboard players operation use_sword arena_board %= #2 arena_board

scoreboard players operation use_bow arena_board = rule arena_board
scoreboard players operation use_bow arena_board /= #4 arena_board
scoreboard players operation use_bow arena_board %= #2 arena_board

scoreboard players operation use_helmet arena_board = rule arena_board
scoreboard players operation use_helmet arena_board /= #8 arena_board
scoreboard players operation use_helmet arena_board %= #2 arena_board

scoreboard players operation use_chestplate arena_board = rule arena_board
scoreboard players operation use_chestplate arena_board /= #16 arena_board
scoreboard players operation use_chestplate arena_board %= #2 arena_board

scoreboard players operation use_leggings arena_board = rule arena_board
scoreboard players operation use_leggings arena_board /= #32 arena_board
scoreboard players operation use_leggings arena_board %= #2 arena_board

scoreboard players operation use_boots arena_board = rule arena_board
scoreboard players operation use_boots arena_board /= #64 arena_board
scoreboard players operation use_boots arena_board %= #2 arena_board

scoreboard players operation use_bread_1 arena_board = rule arena_board
scoreboard players operation use_bread_1 arena_board /= #128 arena_board
scoreboard players operation use_bread_1 arena_board %= #2 arena_board

scoreboard players operation use_bread_2 arena_board = rule arena_board
scoreboard players operation use_bread_2 arena_board /= #256 arena_board
scoreboard players operation use_bread_2 arena_board %= #2 arena_board

scoreboard players operation use_glowing arena_board = rule arena_board
scoreboard players operation use_glowing arena_board /= #512 arena_board
scoreboard players operation use_glowing arena_board %= #2 arena_board

scoreboard players operation use_arrows_1 arena_board = rule arena_board
scoreboard players operation use_arrows_1 arena_board /= #1024 arena_board
scoreboard players operation use_arrows_1 arena_board %= #2 arena_board

scoreboard players operation use_arrows_2 arena_board = rule arena_board
scoreboard players operation use_arrows_2 arena_board /= #2048 arena_board
scoreboard players operation use_arrows_2 arena_board %= #2 arena_board

#calculate number of breads
scoreboard players operation num_bread arena_board = use_bread_1 arena_board
scoreboard players operation num_bread_2 arena_board = use_bread_2 arena_board
scoreboard players operation num_bread_2 arena_board *= #2 arena_board
scoreboard players operation num_bread arena_board += num_bread_2 arena_board
scoreboard players operation num_bread arena_board *= #8 arena_board
scoreboard players reset num_bread_2 arena_board

#calculate number of arrows
scoreboard players operation num_arrows arena_board *= use_arrows_1 arena_board
scoreboard players operation num_arrows_2 arena_board *= use_arrows_2 arena_board
scoreboard players operation num_arrows_2 arena_board *= #2 arena_board
scoreboard players operation num_arrows arena_board += num_arrows_2 arena_board
scoreboard players operation num_arrows arena_board *= #32 arena_board
execute if score num_arrows arena_board matches 96 run scoreboard players set num_arrows arena_board 128
scoreboard players reset num_arrows_2 arena_board

#handle triggered input
execute if score @s arenaSpielregeln matches 5 if score use_shield arena_board matches 1 run scoreboard players remove rule arena_board 1
execute if score @s arenaSpielregeln matches 5 if score use_shield arena_board matches 1 run scoreboard players set use_shield arena_board 0
execute if score @s arenaSpielregeln matches 6 if score use_shield arena_board matches 0 run scoreboard players add rule arena_board 1
execute if score @s arenaSpielregeln matches 6 if score use_shield arena_board matches 0 run scoreboard players set use_shield arena_board 1
execute if score @s arenaSpielregeln matches 7 if score use_sword arena_board matches 1 run scoreboard players remove rule arena_board 2
execute if score @s arenaSpielregeln matches 7 if score use_sword arena_board matches 1 run scoreboard players set use_sword arena_board 0
execute if score @s arenaSpielregeln matches 8 if score use_sword arena_board matches 0 run scoreboard players add rule arena_board 2
execute if score @s arenaSpielregeln matches 8 if score use_sword arena_board matches 0 run scoreboard players set use_sword arena_board 1
execute if score @s arenaSpielregeln matches 9 if score use_bow arena_board matches 1 run scoreboard players remove rule arena_board 4
execute if score @s arenaSpielregeln matches 9 if score use_bow arena_board matches 1 run scoreboard players set use_bow arena_board 0
execute if score @s arenaSpielregeln matches 10 if score use_bow arena_board matches 0 run scoreboard players add rule arena_board 4
execute if score @s arenaSpielregeln matches 10 if score use_bow arena_board matches 0 run scoreboard players set use_bow arena_board 1
execute if score @s arenaSpielregeln matches 11 if score use_helmet arena_board matches 1 run scoreboard players remove rule arena_board 8
execute if score @s arenaSpielregeln matches 11 if score use_helmet arena_board matches 1 run scoreboard players set use_helmet arena_board 0
execute if score @s arenaSpielregeln matches 12 if score use_helmet arena_board matches 0 run scoreboard players add rule arena_board 8
execute if score @s arenaSpielregeln matches 12 if score use_helmet arena_board matches 0 run scoreboard players set use_helmet arena_board 1
execute if score @s arenaSpielregeln matches 13 if score use_chestplate arena_board matches 1 run scoreboard players remove rule arena_board 16
execute if score @s arenaSpielregeln matches 13 if score use_chestplate arena_board matches 1 run scoreboard players set use_chestplate arena_board 0
execute if score @s arenaSpielregeln matches 14 if score use_chestplate arena_board matches 0 run scoreboard players add rule arena_board 16
execute if score @s arenaSpielregeln matches 14 if score use_chestplate arena_board matches 0 run scoreboard players set use_chestplate arena_board 1
execute if score @s arenaSpielregeln matches 15 if score use_leggings arena_board matches 1 run scoreboard players remove rule arena_board 32
execute if score @s arenaSpielregeln matches 15 if score use_leggings arena_board matches 1 run scoreboard players set use_leggings arena_board 0
execute if score @s arenaSpielregeln matches 16 if score use_leggings arena_board matches 0 run scoreboard players add rule arena_board 32
execute if score @s arenaSpielregeln matches 16 if score use_leggings arena_board matches 0 run scoreboard players set use_leggings arena_board 1
execute if score @s arenaSpielregeln matches 17 if score use_boots arena_board matches 1 run scoreboard players remove rule arena_board 64
execute if score @s arenaSpielregeln matches 17 if score use_boots arena_board matches 1 run scoreboard players set use_boots arena_board 0
execute if score @s arenaSpielregeln matches 18 if score use_boots arena_board matches 0 run scoreboard players add rule arena_board 64
execute if score @s arenaSpielregeln matches 18 if score use_boots arena_board matches 0 run scoreboard players set use_boots arena_board 1

execute if score @s arenaSpielregeln matches 19 unless score num_bread arena_board matches 0 run scoreboard players set num_bread arena_board 0
execute if score @s arenaSpielregeln matches 20 unless score num_bread arena_board matches 8 run scoreboard players set num_bread arena_board 8
execute if score @s arenaSpielregeln matches 21 unless score num_bread arena_board matches 16 run scoreboard players set num_bread arena_board 16
execute if score @s arenaSpielregeln matches 22 unless score num_bread arena_board matches 24 run scoreboard players set num_bread arena_board 24

execute if score @s arenaSpielregeln matches 23 if score use_glowing arena_board matches 1 run scoreboard players remove rule arena_board 512
execute if score @s arenaSpielregeln matches 23 if score use_glowing arena_board matches 1 run scoreboard players set use_glowing arena_board 0
execute if score @s arenaSpielregeln matches 24 if score use_glowing arena_board matches 0 run scoreboard players add rule arena_board 512
execute if score @s arenaSpielregeln matches 24 if score use_glowing arena_board matches 0 run scoreboard players set use_glowing arena_board 1

execute if score @s arenaSpielregeln matches 25 unless score num_arrows arena_board matches 0 run scoreboard players set num_arrows arena_board 0
execute if score @s arenaSpielregeln matches 26 unless score num_arrows arena_board matches 32 run scoreboard players set num_arrows arena_board 32
execute if score @s arenaSpielregeln matches 27 unless score num_arrows arena_board matches 64 run scoreboard players set num_arrows arena_board 64
execute if score @s arenaSpielregeln matches 28 unless score num_arrows arena_board matches 128 run scoreboard players set num_arrows arena_board 128

#update number of breads
execute if score num_bread arena_board matches 0 if score use_bread_1 arena_board matches 1 run scoreboard players remove rule arena_board 128
execute if score num_bread arena_board matches 0 if score use_bread_2 arena_board matches 1 run scoreboard players remove rule arena_board 256
execute if score num_bread arena_board matches 8 if score use_bread_1 arena_board matches 0 run scoreboard players add rule arena_board 128
execute if score num_bread arena_board matches 8 if score use_bread_2 arena_board matches 1 run scoreboard players remove rule arena_board 256
execute if score num_bread arena_board matches 16 if score use_bread_1 arena_board matches 1 run scoreboard players remove rule arena_board 128
execute if score num_bread arena_board matches 16 if score use_bread_2 arena_board matches 0 run scoreboard players add rule arena_board 256
execute if score num_bread arena_board matches 24 if score use_bread_1 arena_board matches 0 run scoreboard players add rule arena_board 128
execute if score num_bread arena_board matches 24 if score use_bread_2 arena_board matches 0 run scoreboard players add rule arena_board 256


#update number of arrows
execute if score num_arrows arena_board matches 0 if score use_arrows_1 arena_board matches 1 run scoreboard players remove rule arena_board 1024
execute if score num_arrows arena_board matches 0 if score use_arrows_2 arena_board matches 1 run scoreboard players remove rule arena_board 2048
execute if score num_arrows arena_board matches 32 if score use_arrows_1 arena_board matches 0 run scoreboard players add rule arena_board 1024
execute if score num_arrows arena_board matches 32 if score use_arrows_2 arena_board matches 1 run scoreboard players remove rule arena_board 2048
execute if score num_arrows arena_board matches 64 if score use_arrows_1 arena_board matches 1 run scoreboard players remove rule arena_board 1024
execute if score num_arrows arena_board matches 64 if score use_arrows_2 arena_board matches 0 run scoreboard players add rule arena_board 2048
execute if score num_arrows arena_board matches 128 if score use_arrows_1 arena_board matches 0 run scoreboard players add rule arena_board 1024
execute if score num_arrows arena_board matches 128 if score use_arrows_2 arena_board matches 0 run scoreboard players add rule arena_board 2048

#update players equipment
execute if score @s arenaSpielregeln matches 2 run function arena:setup/rules

#change gamemaster
execute if score @s arenaSpielregeln matches 3..4 if entity @a[tag=!arena_gamemaster,predicate=arena:in_arena_team] run function arena:game/gamemaster_remove
execute if score @s arenaSpielregeln matches 3..4 unless entity @a[tag=arena_new_gamemaster] run tellraw @s {"translate":"arena.rules.gamemaster.change.failed","color":"red"}
execute if entity @a[tag=arena_new_gamemaster] as @a[tag=arena_new_gamemaster,limit=1] run function arena:game/gamemaster_update

#print rules to the player
execute if entity @s[tag=arena_gamemaster] run function arena:rules/print

#sound
execute if score @s arenaSpielregeln matches 2.. at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.2