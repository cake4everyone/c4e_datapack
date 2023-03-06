#player, who was killed (@s), killed by someone from team cyan:

execute unless entity @s[team=arena_cyan] as @a[team=arena_cyan] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 0.5

execute unless entity @s[team=arena_cyan] if score use_glowing arena_board matches 1 run effect give @a[team=arena_cyan] minecraft:glowing 5 1 true
