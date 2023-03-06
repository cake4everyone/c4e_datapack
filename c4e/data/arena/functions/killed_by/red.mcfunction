#player, who was killed (@s), killed by someone from team red:

execute unless entity @s[team=arena_red] as @a[team=arena_red] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 0.5

execute unless entity @s[team=arena_red] if score use_glowing arena_board matches 1 run effect give @a[team=arena_red] minecraft:glowing 5 1 true
