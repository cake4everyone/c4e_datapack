#display the current rules
tellraw @s ["\n\n",{"translate":"arena.rules.main","color":"gold","bold":true,"underlined":true}]

#shield
execute unless score use_shield arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.shield","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.shield"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 6"}}
execute if score use_shield arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.shield","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.shield"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 5"}}

#sword
execute unless score use_sword arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.stone_sword","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.stone_sword"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 8"}}
execute if score use_sword arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.stone_sword","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.stone_sword"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 7"}}

#bow
execute unless score use_bow arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.bow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.bow"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 10"}}
execute if score use_bow arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.bow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.bow"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 9"}}

#arrows
execute if score use_bow arena_board matches 0 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.arrow"},{"translate":"addServer.resourcePack.disabled","italic":true}], "color":"dark_gray", "hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.arrows.disabled","color":"gray"}}}

execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 0 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.arrow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.arrows"}}},[{"text":""},{"text":" - ","color":"dark_gray"},{"translate":"enchantment.minecraft.infinity","color":"light_purple"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 26"}}]], "color":"dark_aqua"}
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 32 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.arrow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.arrows"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 25"}},{"text":"  32  ","color":"dark_aqua"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 27"}}]], "color":"dark_aqua"}
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 64 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.arrow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.arrows"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 26"}},{"text":"  64  ","color":"dark_aqua"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 28"}}]], "color":"dark_aqua"}
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 128 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.arrow","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.arrows"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 27"}},{"text":"2x 64","color":"dark_aqua"},{"text":" + ","color":"dark_gray"}]], "color":"dark_aqua"}

#helmet
execute unless score use_helmet arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_helmet","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_helmet"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 12"}}
execute if score use_helmet arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_helmet","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_helmet"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 11"}}

#chestplate
execute unless score use_chestplate arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_chestplate","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_chestplate"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 14"}}
execute if score use_chestplate arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_chestplate","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_chestplate"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 13"}}

#leggings
execute unless score use_leggings arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_leggings","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_leggings"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 16"}}
execute if score use_leggings arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_leggings","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_leggings"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 15"}}

#boots
execute unless score use_boots arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_boots","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_boots"}]}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 18"}}
execute if score use_boots arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"item.minecraft.leather_boots","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.use_item", "with":[{"translate":"item.minecraft.leather_boots"}]}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 17"}}

#bread
execute if score num_bread arena_board matches 0 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.bread","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.bread"}}},[{"text":""},{"text":" - ","color":"dark_gray"},{"text":"  0","color":"dark_red"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 20"}}]], "color":"dark_aqua"}
execute if score num_bread arena_board matches 8 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.bread","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.bread"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 19"}},{"text":" 8","color":"dark_aqua"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 21"}}]], "color":"dark_aqua"}
execute if score num_bread arena_board matches 16 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.bread","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.bread"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 20"}},{"text":"16","color":"dark_aqua"},{"text":" + ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 22"}}]], "color":"dark_aqua"}
execute if score num_bread arena_board matches 24 run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"item.minecraft.bread","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.bread"}}},[{"text":" - ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 21"}},{"text":"24","color":"dark_aqua"},{"text":" + ","color":"dark_gray"}]], "color":"dark_aqua"}

#glowing
execute unless score use_glowing arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"effect.minecraft.glowing","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.glowing"}}},{"translate":"options.off","color":"dark_red"},{"translate":"options.on","color":"dark_gray"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 24"}}
execute if score use_glowing arena_board matches 1 run tellraw @s {"translate":"%s: %s <> %s", "with":[{"translate":"effect.minecraft.glowing","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.glowing"}}},{"translate":"options.off","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}], "color":"dark_aqua", "hoverEvent":{"action":"show_text","value":{"translate":"narration.checkbox.usage.hovered"}}, "clickEvent":{"action":"run_command","value":"/trigger arenaSpielregeln set 23"}}

#apply button
tellraw @s {"translate":"arena.rules.apply","clickEvent": {"action":"run_command","value":"/trigger arenaSpielregeln set 2"}, "color":"green","underlined": true}

#change gamemaster
execute if entity @a[tag=!arena_gamemaster,predicate=arena:in_arena_team] run tellraw @s {"translate":"options.generic_value", "with": [{"translate":"arena.rules.gamemaster.change"},["",{"translate":"argument.entity.selector.randomPlayer","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.gamemaster.change.random"}}, "clickEvent": {"action":"run_command","value":"/trigger arenaSpielregeln set 3"},"color":"aqua","underlined": true}," ",{"translate":"argument.entity.selector.nearestPlayer","hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.gamemaster.change.nearest"}}, "clickEvent": {"action":"run_command","value":"/trigger arenaSpielregeln set 4"},"color":"aqua","underlined": true}]], "color":"red"}

execute unless entity @a[tag=!arena_gamemaster,predicate=arena:in_arena_team] run tellraw @s {"translate":"options.generic_value", "with":[{"translate":"arena.rules.gamemaster.change"},{"translate":"addServer.resourcePack.disabled","italic":true}], "color":"dark_gray", "hoverEvent":{"action":"show_text","value":{"translate":"arena.rules.gamemaster.change.disabled","color":"gray"}}}