#set new gamemaster
execute if entity @s[tag=arena_new_gamemaster] run tag @s remove arena_new_gamemaster
tag @s add arena_gamemaster

tellraw @s {"translate":"arena.rules.gamemaster.new.self", "hoverEvent": {"action":"show_text","value":{"translate":"arena.rules.gamemaster.new.self.info"}}, "clickEvent": {"action": "suggest_command","value":"/trigger arenaSpielregeln"}, "color":"gold"}
tellraw @a[tag=!arena_gamemaster,predicate=arena:in_arena_team] {"translate":"arena.rules.gamemaster.new", "with":[{"selector":"@s"}], "color":"gold"}


#load their rules
scoreboard players set player forloop 0
execute store result score len_players forloop run data get storage arena:rules players
function arena:game/gamemaster_update/forloop

#finish up
scoreboard players reset player forloop
scoreboard players reset len_players forloop
scoreboard players reset id forloop