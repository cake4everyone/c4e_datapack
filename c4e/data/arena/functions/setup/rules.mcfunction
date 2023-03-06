#set the timer back to 10 seconds if its already fallen below 10 seconds on the start-countdown
execute if score gamephase arena_board matches 1 if score timer arena_board matches ..200 run scoreboard players set timer arena_board 200

#refreshing all subrules
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

#appling them to the players
execute as @a[team=arena_red] run function arena:join_team/red
execute as @a[team=arena_green] run function arena:join_team/green
execute as @a[team=arena_blue] run function arena:join_team/blue
execute as @a[team=arena_yellow] run function arena:join_team/yellow
execute as @a[team=arena_cyan] run function arena:join_team/cyan
execute as @a[team=arena_purple] run function arena:join_team/purple
execute as @a[team=arena_pink] run function arena:join_team/pink
