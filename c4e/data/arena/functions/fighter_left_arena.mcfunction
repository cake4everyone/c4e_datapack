
execute if entity @s[team=arena_red] run function arena:leave_team/red
execute if entity @s[team=arena_green] run function arena:leave_team/green
execute if entity @s[team=arena_blue] run function arena:leave_team/blue
execute if entity @s[team=arena_yellow] run function arena:leave_team/yellow
execute if entity @s[team=arena_cyan] run function arena:leave_team/cyan
execute if entity @s[team=arena_purple] run function arena:leave_team/pink
execute if entity @s[team=arena_pink] run function arena:leave_team/pink

execute if entity @s[team=arena_red] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.red","color":"dark_red"}], "color":"red"}]
execute if entity @s[team=arena_green] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.green","color":"dark_green"}], "color":"red"}]
execute if entity @s[team=arena_blue] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.blue","color":"blue"}], "color":"red"}]
execute if entity @s[team=arena_yellow] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.yellow","color":"yellow"}], "color":"red"}]
execute if entity @s[team=arena_cyan] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.cyan","color":"aqua"}], "color":"red"}]
execute if entity @s[team=arena_purple] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.purple","color":"dark_purple"}], "color":"red"}]
execute if entity @s[team=arena_pink] run tellraw @s [{"translate":"arena.message.remove_team.left_arena", "with":[{"translate":"color.minecraft.pink","color":"light_purple"}], "color":"red"}]
team leave @s
