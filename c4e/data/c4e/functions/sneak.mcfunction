execute as @a[team=!sneak,team=!live] unless predicate arena:in_arena_team if score @s sneak matches 1.. run team join sneak @s
execute as @a[team=sneak,tag=!liveSneak] unless score @s sneak matches 1.. run team leave @s


execute as @a[team=live] if score @s sneak matches 1.. run tag @s add liveSneak
execute as @a[team=live,tag=liveSneak] run team join sneak @s
execute as @a[team=sneak,tag=liveSneak] unless score @s sneak matches 1.. run team join live

execute as @a[team=live,tag=liveSneak] run tag @s remove liveSneak
