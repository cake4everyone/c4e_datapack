#run once every tick as server

execute unless score gamephase arena_board matches 0..3 run scoreboard players set gamephase arena_board 0

execute if score timer arena_board matches 1.. run scoreboard players remove timer arena_board 1

#join a game
execute as @a[tag=arena_waiting,gamemode=adventure] at @s if predicate arena:in_arena if score gamephase arena_board matches 0..1 run function arena:game/join_game

execute as @a[tag=arena_waiting,gamemode=adventure] at @s if predicate arena:in_arena if score gamephase arena_board matches 2..3 run tellraw @s {"translate":"arena.message.illegal_in_arena.running","color":"red","extra":[" ",{"translate":"arena.message.notify_when_ready","color":"white"}]}
execute as @a[tag=arena_waiting,gamemode=adventure] at @s if predicate arena:in_arena if score gamephase arena_board matches 2..3 run tp @s 375.0 72.3 -95 0 0


execute as @a[tag=arena_ingame] at @s unless predicate arena:in_arena run function arena:game/leave_game

#game prephase
execute if score &teams arena_board matches 2.. if score gamephase arena_board matches 0 run scoreboard players set timer arena_board 600
execute if score &teams arena_board matches 2.. if score gamephase arena_board matches 0 run bossbar set arena_timer visible true
execute if score &teams arena_board matches 2.. if score gamephase arena_board matches 0 run tellraw @a[predicate=arena:in_arena_team] {"translate":"arena.message.timer.start","color":"gold"}
execute if score &teams arena_board matches 2.. if score gamephase arena_board matches 0 run scoreboard players set gamephase arena_board 1

execute if score &teams arena_board matches ..1 if score gamephase arena_board matches 1 run scoreboard players set timer arena_board -1
execute if score &teams arena_board matches ..1 if score gamephase arena_board matches 1 run bossbar set arena_timer visible false
execute if score &teams arena_board matches ..1 if score gamephase arena_board matches 1 run tellraw @a[predicate=arena:in_arena] {"translate":"arena.message.starting_ended","color":"gold"}
execute if score &teams arena_board matches ..1 if score gamephase arena_board matches 1 run scoreboard players set gamephase arena_board 0

execute if score gamephase arena_board matches 1 run bossbar set arena_timer players @a[tag=arena_ingame]
execute if score gamephase arena_board matches 1 store result bossbar arena_timer value run scoreboard players get timer arena_board

execute if score gamephase arena_board matches 1 run title @a[tag=arena_ingame] times 0 20 20
execute if score gamephase arena_board matches 1 run scoreboard players operation timer_sec arena_board = timer arena_board
execute if score gamephase arena_board matches 1 run scoreboard players remove timer_sec arena_board 1
execute if score gamephase arena_board matches 1 run scoreboard players operation timer_sec arena_board /= tps arena_board
execute if score gamephase arena_board matches 1 run scoreboard players add timer_sec arena_board 1
execute if score gamephase arena_board matches 1 run function arena:game/update_bossbar
#execute if score gamephase arena_board matches 1 unless score timer arena_board matches ..60 run title @a[tag=arena_ingame] title {"score":{"objective":"arena_board","name":"timer_sec"}}
execute if score gamephase arena_board matches 1 if score timer arena_board matches 2..60 run title @a[tag=arena_ingame] title {"score":{"objective":"arena_board","name":"timer_sec"},"color":"gold"}
execute if score gamephase arena_board matches 1 if score timer arena_board matches ..1 run title @a[tag=arena_ingame] title {"score":{"objective":"arena_board","name":"timer_sec"},"color":"green"}
execute if score gamephase arena_board matches 1 if score timer arena_board matches 1 run tellraw @a[tag=!arena_ingame,predicate=arena:near_arena_or_entrance] {"translate":"arena.message.game_start","color":"gold"}

execute if score gamephase arena_board matches 1 if score timer arena_board matches 60 as @a[tag=arena_ingame] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 .8
execute if score gamephase arena_board matches 1 if score timer arena_board matches 40 as @a[tag=arena_ingame] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 .8
execute if score gamephase arena_board matches 1 if score timer arena_board matches 20 as @a[tag=arena_ingame] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 .8
execute if score gamephase arena_board matches 1 if score timer arena_board matches 1 as @a[predicate=arena:near_arena_or_entrance] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.2


#start game
execute if score timer arena_board matches 0 if score gamephase arena_board matches 1 run bossbar set arena_timer visible false
execute if score timer arena_board matches 0 if score gamephase arena_board matches 1 run scoreboard players set gamephase arena_board 2
execute if score timer arena_board matches 0 if score gamephase arena_board matches 2 run scoreboard players set timer arena_board -1
execute if score gamephase arena_board matches 2 as @a[tag=arena_ingame] run function arena:game/show_team_members

#team won
execute if score &teams arena_board matches ..1 if score gamephase arena_board matches 2 run function arena:game/team_won

#
execute if score &teams arena_board matches 0 if score gamephase arena_board matches 3 run function arena:game/reset
execute if score timer arena_board matches 0 if score gamephase arena_board matches 3 run function arena:game/reset



#rules
execute if score gamephase arena_board matches 0..1 run scoreboard players enable @a[tag=arena_gamemaster] arenaSpielregeln
execute as @a if score @s arenaSpielregeln matches 1.. at @s unless predicate arena:in_arena_or_entrance run tellraw @s {"translate":"arena.rules.failed.not_in_arena","color":"red"}
execute as @a[tag=!arena_gamemaster] if score @s arenaSpielregeln matches 1.. at @s if predicate arena:in_arena_or_entrance run tellraw @s {"translate":"arena.rules.failed.permission","color":"red"}
execute unless score gamephase arena_board matches 0..1 as @a[tag=arena_gamemaster] if score @s arenaSpielregeln matches 1.. at @s if predicate arena:in_arena_or_entrance run tellraw @s {"translate":"arena.rules.failed.game_running","color":"red"}
execute if score gamephase arena_board matches 0..1 as @a[tag=arena_gamemaster] if score @s arenaSpielregeln matches 1.. at @s if predicate arena:in_arena_or_entrance run function arena:rules
execute as @a if score @s arenaSpielregeln matches 1.. run scoreboard players reset @s arenaSpielregeln
