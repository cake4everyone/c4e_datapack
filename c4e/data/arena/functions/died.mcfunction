#player, who was killed (@s), is in_arena_team

#substract 1 from death-scoreboard, because a arena kill should not count to global deaths
scoreboard players remove @s deaths 1


#the killed_by 'switch-case'
execute if score @s killed_by_red matches 1.. run function arena:killed_by/red
execute if score @s killed_by_green matches 1.. run function arena:killed_by/green
execute if score @s killed_by_blue matches 1.. run function arena:killed_by/blue
execute if score @s killed_by_yellow matches 1.. run function arena:killed_by/yellow
execute if score @s killed_by_cyan matches 1.. run function arena:killed_by/cyan
execute if score @s killed_by_purple matches 1.. run function arena:killed_by/purple
execute if score @s killed_by_pink matches 1.. run function arena:killed_by/pink

#select message
execute if entity @s[team=arena_red] run function arena:killed/red
execute if entity @s[team=arena_green] run function arena:killed/green
execute if entity @s[team=arena_blue] run function arena:killed/blue
execute if entity @s[team=arena_yellow] run function arena:killed/yellow
execute if entity @s[team=arena_cyan] run function arena:killed/cyan
execute if entity @s[team=arena_purple] run function arena:killed/purple
execute if entity @s[team=arena_pink] run function arena:killed/pink


#remove the killed player from the alive counter
tag @s remove arena_ingame
