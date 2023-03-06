
execute store result score id forloop run data get storage arena:survival_data players[0].id
execute if score id forloop = @s playerID run function arena:leave_team/forloop/pull_data


data modify storage arena:survival_data players append from storage arena:survival_data players[0]
data remove storage arena:survival_data players[0]

scoreboard players add player forloop 1

execute if score player forloop < len_players forloop run function arena:leave_team/forloop
