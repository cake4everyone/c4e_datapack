#player, who was killed (@s), killed by someone from team yellow:

execute unless entity @s[team=arena_yellow] as @a[team=arena_yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 0.5

execute unless entity @s[team=arena_yellow] if score use_glowing arena_board matches 1 run effect give @a[team=arena_yellow] minecraft:glowing 5 1 true
