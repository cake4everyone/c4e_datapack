#player, who was killed (@s), killed by someone from team pink:

execute unless entity @s[team=arena_pink] as @a[team=arena_pink] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 0.5

execute unless entity @s[team=arena_pink] if score use_glowing arena_board matches 1 run effect give @a[team=arena_pink] minecraft:glowing 5 1 true
