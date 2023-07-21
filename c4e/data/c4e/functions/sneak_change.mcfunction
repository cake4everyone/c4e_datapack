execute as @a[tag=c4e_lib_sneak,team=!sneak,team=!live] unless predicate arena:in_arena_team run team join sneak @s
execute as @a[tag=!c4e_lib_sneak,team=sneak,tag=!liveSneak] run team leave @s

execute as @a[tag=c4e_lib_sneak,team=live] run tag @s add liveSneak
execute as @a[team=live,tag=liveSneak] run team join sneak @s
execute as @a[tag=!c4e_lib_sneak,team=sneak,tag=liveSneak] run team join live

execute as @a[team=live,tag=liveSneak] run tag @s remove liveSneak
