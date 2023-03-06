tag @s add arena_ingame

tellraw @s {"translate":"arena.message.join_game"}
tellraw @a[tag=!arena_waiting,tag=arena_ingame] {"translate":"arena.message.join_game.arena", "with":[{"selector":"@s"}]}
tellraw @a[tag=!arena_ingame,predicate=arena:near_arena_or_entrance] {"translate":"arena.message.join_game.viewer", "with":[{"selector":"@s"}]}

tag @s remove arena_waiting

#resetting timer
execute if score timer arena_board matches 1..199 run scoreboard players set timer arena_board 200

function arena:game/player_update
