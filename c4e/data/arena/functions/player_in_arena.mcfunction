# the player (@s), who is in the arena without a valid arena team

tp @s 375.0 72.3 -95 0 0

tellraw @s [{"translate":"arena.message.illegal_in_arena.team","color":"red"}]
