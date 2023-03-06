### executed when a player triggers on item_frame scoreboard
### executed as and at the player
###
### scoreboard 'set_visible' counts invisible item_frames that are about to be modified
### scoreboard 'set_invisible' counts visible item_frames that are about to be modified
###

execute if score @s item_frame matches 11.. run scoreboard players set @s item_frame 10
scoreboard players operation @s loop_max = @s item_frame
scoreboard players set @s loop_mode 1
function c4e_lib:loop/start
# execute positioned ~ ~ ~ as @e[type=#c4e:item_frames,distance=..10,tag=!locked] run tag @s add modify


# execute positioned ~ ~ ~ as @e[type=minecraft:item_frame,distance=..6,tag=!locked] run tag @s add modify
# execute positioned ~ ~ ~ as @e[type=minecraft:glow_item_frame,distance=..6,tag=!locked] run tag @s add modify

execute store result score @s set_visible run execute if entity @e[tag=modify,nbt={Invisible: 1b}]
execute store result score @s set_invisible run execute if entity @e[tag=modify,nbt={Invisible: 0b}]

tellraw Kesuaheli [{"text": "[DEBUG] item_frame (@"},{"selector": "@s"},{"text": "): "}, {"text": "invisible="},{"score":{"name": "@s","objective": "set_visible","value": "-error-"}}, {"text": " visible="},{"score":{"name": "@s","objective": "set_invisible","value": "-error-"}}]

execute positioned ~ ~ ~ as @e[tag=modify,nbt={Invisible: 0b}] run tag @s add visible
execute positioned ~ ~ ~ as @e[tag=modify,nbt={Invisible: 1b}] run data merge entity @s {Invisible: 0b, Invulnerable: 0b, Fixed: 0b}
execute positioned ~ ~ ~ as @e[tag=modify,tag=visible] run data merge entity @s {Invisible: 1b, Invulnerable: 1b, Fixed: 1b}
execute as @e[tag=visible] run tag @s remove visible

#nothing changed
execute if score @s set_visible matches 0 if score @s set_invisible matches 0 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurde: \n","color":"gold"},{"text":" • kein Item Frame verändert!","color":"red"}]

#only 1+ visible or 1+ invisible (not both)
execute if score @s set_visible matches 1 if score @s set_invisible matches 0 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurde:\n","color":"gold"},{"text":" • ein Item Frame ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" gemacht.","color":"aqua"}]
execute if score @s set_visible matches 2.. if score @s set_invisible matches 0 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ","color":"aqua"},{"score":{"name":"@s","objective":"set_visible"},"color":"aqua"},{"text":" Item Frames ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" gemacht.","color":"aqua"}]
execute if score @s set_visible matches 0 if score @s set_invisible matches 1 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurde:\n","color":"gold"},{"text":" • ein Item Frame  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]
execute if score @s set_visible matches 0 if score @s set_invisible matches 2.. run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ","color":"aqua"},{"score":{"name":"@s","objective":"set_invisible"},"color":"aqua"},{"text":" Item Frames  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]

# (1+ visible and 1 invisible) or (1+ invisible and 1 visible)
execute if score @s set_visible matches 1 if score @s set_invisible matches 1 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ein Item Frame ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" und\n • ein Item Frame  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]
execute if score @s set_visible matches 2.. if score @s set_invisible matches 1 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ","color":"aqua"},{"score":{"name":"@s","objective":"set_visible"},"color":"aqua"},{"text":" Item Frames ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" und \n • ein Item Frame  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]
execute if score @s set_visible matches 1 if score @s set_invisible matches 2.. run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ein Item Frame ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" und \n • ","color":"aqua"},{"score":{"name":"@s","objective":"set_invisible"},"color":"aqua"},{"text":" Item Frames  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]

# 1+ visible and 1+  invisible
execute if score @s set_visible matches 2.. if score @s set_invisible matches 2 run tellraw @s [{"text":"In einem Umkreis von 10 Blöcken um dich rum wurden:\n","color":"gold"},{"text":" • ","color":"aqua"},{"score":{"name":"@s","objective":"set_visible"},"color":"aqua"},{"text":" Item Frames ","color":"aqua"},{"text":"sichtbar","color":"green"},{"text":" und \n • ","color":"aqua"},{"score":{"name":"@s","objective":"set_invisible"},"color":"aqua"},{"text":" Item Frames  ","color":"aqua"},{"text":"unsichtbar","color":"red"},{"text":" gemacht.","color":"aqua"}]


execute as @e[tag=modify] run tag @s remove modify
scoreboard players reset @s item_frame
