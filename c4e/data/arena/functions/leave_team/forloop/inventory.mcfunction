
#execute store result score id forloop run data get storage arena:survival_data players[0].id
#execute if score id forloop = @s playerID run function arena:leave_team/forloop/pull_data

summon item ~ ~ ~ {Item:{Count:1b,id:"barrier"},PickupDelay:1,Tags:["arena_SI"]}
data modify entity @e[type=item,tag=arena_SI,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @e[type=item,tag=arena_SI,limit=1,sort=nearest] Item set from storage arena:survival_data players[0].inv[0]
tag @e[type=item,tag=arena_SI] remove arena_SI
execute as @e[type=item,tag=!arena_SI] run data modify entity @s PickupDelay set value 0


data remove storage arena:survival_data players[0].inv[0]

scoreboard players add item forloop 1
execute if score item forloop < len_items forloop run function arena:leave_team/forloop/inventory
