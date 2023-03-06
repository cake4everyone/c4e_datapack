

execute if entity @a[team=arena_red,tag=arena_ingame] store result score &red arena_board if entity @a[team=arena_red,tag=arena_ingame]
execute if entity @a[team=arena_green,tag=arena_ingame] store result score &green arena_board if entity @a[team=arena_green,tag=arena_ingame]
execute if entity @a[team=arena_blue,tag=arena_ingame] store result score &blue arena_board if entity @a[team=arena_blue,tag=arena_ingame]
execute if entity @a[team=arena_yellow,tag=arena_ingame] store result score &yellow arena_board if entity @a[team=arena_yellow,tag=arena_ingame]
execute if entity @a[team=arena_cyan,tag=arena_ingame] store result score &cyan arena_board if entity @a[team=arena_cyan,tag=arena_ingame]
execute if entity @a[team=arena_purple,tag=arena_ingame] store result score &purple arena_board if entity @a[team=arena_purple,tag=arena_ingame]
execute if entity @a[team=arena_pink,tag=arena_ingame] store result score &pink arena_board if entity @a[team=arena_pink,tag=arena_ingame]

execute unless entity @a[team=arena_red,tag=arena_ingame] run scoreboard players reset &red arena_board
execute unless entity @a[team=arena_green,tag=arena_ingame] run scoreboard players reset &green arena_board
execute unless entity @a[team=arena_blue,tag=arena_ingame] run scoreboard players reset &blue arena_board
execute unless entity @a[team=arena_yellow,tag=arena_ingame] run scoreboard players reset &yellow arena_board
execute unless entity @a[team=arena_cyan,tag=arena_ingame] run scoreboard players reset &cyan arena_board
execute unless entity @a[team=arena_purple,tag=arena_ingame] run scoreboard players reset &purple arena_board
execute unless entity @a[team=arena_pink,tag=arena_ingame] run scoreboard players reset &pink arena_board


execute if score &teams arena_board matches 1.. run scoreboard players set &teams arena_board 0
execute if score &red arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &green arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &blue arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &yellow arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &cyan arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &purple arena_board matches 1.. run scoreboard players add &teams arena_board 1
execute if score &pink arena_board matches 1.. run scoreboard players add &teams arena_board 1
