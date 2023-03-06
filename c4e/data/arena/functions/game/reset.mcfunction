scoreboard players set timer arena_board -1
scoreboard players set gamephase arena_board 0
function arena:game/player_update

tellraw @a[tag=arena_waiting] {"translate":"arena.message.notify","color":"gold"}
execute as @a[tag=arena_waiting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1
