#storage arene:survival_data players[0]


#spawnpoint
execute at @s run summon marker ~ ~ ~ {Tags:["spawnpoint"]}

#this doesnt work because `Pos` is an array of doubles and trying to overwrite it with an array of integers will result in [0.0d, 0.0d, 0.0d] :/
#data modify entity @e[tag=spawnpoint,limit=1] Pos set from storage arene:survival_data players[0].spawn
#this is why I needed to do them seperatly and mark them here (↓) as doubles
execute store result entity @e[tag=spawnpoint,limit=1] Pos[0] double 1 run data get storage arena:survival_data players[0].spawn[0]
execute store result entity @e[tag=spawnpoint,limit=1] Pos[1] double 1 run data get storage arena:survival_data players[0].spawn[1]
execute store result entity @e[tag=spawnpoint,limit=1] Pos[2] double 1 run data get storage arena:survival_data players[0].spawn[2]

execute at @e[tag=spawnpoint,limit=1] run spawnpoint @s ~ ~ ~
kill @e[type=marker,tag=spawnpoint]


#xp
scoreboard players set xp_given forloop 0
execute store result score xp_need forloop run data get storage arena:survival_data players[0].xp.l
function arena:leave_team/forloop/xp_l

scoreboard players set xp_given forloop 0
execute store result score xp_need forloop run data get storage arena:survival_data players[0].xp.p
function arena:leave_team/forloop/xp_p

scoreboard players reset xp_given forloop
scoreboard players reset xp_need forloop

#inventory
scoreboard players set item forloop 0
execute store result score len_items forloop run data get storage arena:survival_data players[0].inv
execute if score len_items forloop matches 1.. at @s run function arena:leave_team/forloop/inventory

scoreboard players reset item forloop
scoreboard players reset len_items forloop


data remove storage arena:survival_data players[0]
