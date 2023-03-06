execute if entity @a[scores={leave=1..},tag=afk] as @a[scores={leave=1..},tag=afk] run tag @s remove afk
execute if entity @a[scores={leave=1..}] as @a[scores={leave=1..}] run scoreboard players set @s leave 0

execute if entity @a[scores={afk=1..},tag=!afk] as @a[scores={afk=1..},tag=!afk] run tag @s add new_afk
execute if entity @a[scores={afk=1..},tag=afk] as @a[scores={afk=1..},tag=afk] run tag @s add old_afk

execute if entity @a[tag=new_afk] as @a[tag=new_afk] run tellraw @s {"translate":"custom.cake4everyone.messages.afk.join.trigger","color":"yellow"}
execute if entity @a[tag=new_afk] as @a[tag=new_afk] run tag @s add afk
execute if entity @a[tag=old_afk] as @a[tag=old_afk] run tellraw @s {"translate":"custom.cake4everyone.messages.afk.leave.trigger","color":"yellow"}
execute if entity @a[tag=old_afk] as @a[tag=old_afk] run tag @s remove afk

execute if entity @a[tag=new_afk,tag=afk] as @a[tag=new_afk,tag=afk] run tag @s remove new_afk
execute if entity @a[tag=old_afk,tag=!afk] as @a[tag=old_afk,tag=!afk] run tag @s remove old_afk
scoreboard players enable @a afk
execute if entity @a[scores={afk=1..}] as @a[scores={afk=1..}] run scoreboard players set @s afk 0

execute if entity @a[tag=afk,team=!afk] as @a[tag=afk,team=!afk] run team join afk @s
execute if entity @a[tag=!afk,team=afk] as @a[tag=!afk,team=afk] run team leave @s
