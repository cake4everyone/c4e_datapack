

#save playerdata, unless they are already in a team
execute unless predicate arena:in_arena_team run data modify storage arena:survival_data tmp set value {id: 0, inv: [], spawn: [0, 0, 0], xp: {l: 0, p: 0}}

execute unless predicate arena:in_arena_team run execute store result storage arena:survival_data tmp.id int 1 run scoreboard players get @s playerID
execute unless predicate arena:in_arena_team run data modify storage arena:survival_data tmp.inv set from entity @s Inventory
execute unless predicate arena:in_arena_team run data modify storage arena:survival_data tmp.spawn[0] set from entity @s SpawnX
execute unless predicate arena:in_arena_team run data modify storage arena:survival_data tmp.spawn[1] set from entity @s SpawnY
execute unless predicate arena:in_arena_team run data modify storage arena:survival_data tmp.spawn[2] set from entity @s SpawnZ
execute unless predicate arena:in_arena_team run execute store result storage arena:survival_data tmp.xp.l int 1 run xp query @s levels
execute unless predicate arena:in_arena_team run execute store result storage arena:survival_data tmp.xp.p int 1 run xp query @s points

execute unless predicate arena:in_arena_team run data modify storage arena:survival_data players append from storage arena:survival_data tmp
execute unless predicate arena:in_arena_team run data remove storage arena:survival_data tmp

#set new playerdata
spawnpoint @s 375 72 -94

xp set @s 0 levels
xp set @s 0 points

clear @s

execute unless entity @s[tag=arena_ingame] run tag @s add arena_waiting

function arena:game/player_update
