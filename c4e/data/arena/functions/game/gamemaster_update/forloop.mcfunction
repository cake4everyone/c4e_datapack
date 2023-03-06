execute store result score id forloop run data get storage arena:rules players[0].id

execute if score id forloop = @s playerID store result score rule arena_board run data get storage arena:rules players[0].rule
execute if score id forloop = @s playerID run function arena:setup/rules
execute if score id forloop = @s playerID run scoreboard players operation id forloop = len_players forloop

data modify storage arena:rules players append from storage arena:rules players[0]
data remove storage arena:rules players[0]

scoreboard players add player forloop 1
execute if score player forloop < len_players forloop run function arena:game/gamemaster_update/forloop