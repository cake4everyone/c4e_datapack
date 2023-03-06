#player who joins the green team

execute unless entity @s[team=arena_green] run particle dust 0 0.7 0 1.2 ~ ~1 ~ .25 .5 .25 1 500 normal
execute unless entity @s[team=arena_green] at @s run playsound arena:action.join_team master @s

function arena:join_team/general

team join arena_green

#check if a gamemaster already exists, unless update it
execute unless entity @a[tag=arena_gamemaster] run function arena:game/gamemaster_update

execute if score use_helmet arena_board matches 1 run item replace entity @s armor.head with minecraft:leather_helmet{display: {Name: '{"translate":"item.minecraft.leather_helmet","color":"dark_green","italic":false}', color: 43520}, Unbreakable: 1b, HideFlags: 71, Enchantments: [{id: "binding_curse", lvl: 1s}, {id: "minecraft:vanishing_curse", lvl: 1s}]}
execute if score use_chestplate arena_board matches 1 run item replace entity @s armor.chest with minecraft:leather_chestplate{display: {Name: '{"translate":"item.minecraft.leather_chestplate","color":"dark_green","italic":false}', color: 43520}, Unbreakable: 1b, HideFlags: 71, Enchantments: [{id: "binding_curse", lvl: 1s}, {id: "minecraft:vanishing_curse", lvl: 1s}]}
execute if score use_leggings arena_board matches 1 run item replace entity @s armor.legs with minecraft:leather_leggings{display: {Name: '{"translate":"item.minecraft.leather_leggings","color":"dark_green","italic":false}', color: 43520}, Unbreakable: 1b, HideFlags: 71, Enchantments: [{id: "binding_curse", lvl: 1s}, {id: "minecraft:vanishing_curse", lvl: 1s}]}
execute if score use_boots arena_board matches 1 run item replace entity @s armor.feet with minecraft:leather_boots{display: {Name: '{"translate":"item.minecraft.leather_boots","color":"dark_green","italic":false}', color: 43520}, Unbreakable: 1b, HideFlags: 71, Enchantments: [{id: "binding_curse", lvl: 1s}, {id: "minecraft:vanishing_curse", lvl: 1s}]}

execute if score use_sword arena_board matches 1 run item replace entity @s hotbar.0 with minecraft:stone_sword{display: {Name: '{"translate":"item.minecraft.stone_sword","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 7, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], CustomModelData: 2}
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 0 run item replace entity @s hotbar.1 with minecraft:bow{display: {Name: '{"translate":"item.minecraft.bow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}, {id: "infinity", lvl: 1s}], CustomModelData: 2}
execute if score use_bow arena_board matches 1 unless score num_arrows arena_board matches 0 run item replace entity @s hotbar.1 with minecraft:bow{display: {Name: '{"translate":"item.minecraft.bow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], CustomModelData: 2}

execute if score num_bread arena_board matches 8 run item replace entity @s[name=!"Kesuaheli",name=!"Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.bread","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 8
execute if score num_bread arena_board matches 16 run item replace entity @s[name=!"Kesuaheli",name=!"Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.bread","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 16
execute if score num_bread arena_board matches 24 run item replace entity @s[name=!"Kesuaheli",name=!"Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.bread","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 24
execute if score num_bread arena_board matches 8 run item replace entity @s[name="Kesuaheli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"special.glutenfree", "with":[{"translate":"item.minecraft.bread"}],"color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 8
execute if score num_bread arena_board matches 16 run item replace entity @s[name="Kesuaheli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"special.glutenfree", "with":[{"translate":"item.minecraft.bread"}],"color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 16
execute if score num_bread arena_board matches 24 run item replace entity @s[name="Kesuaheli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"special.glutenfree", "with":[{"translate":"item.minecraft.bread"}],"color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 24
execute if score num_bread arena_board matches 8 run item replace entity @s[name="Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.cookie","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], CustomModelData: 1} 8
execute if score num_bread arena_board matches 16 run item replace entity @s[name="Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.cookie","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], CustomModelData: 1} 16
execute if score num_bread arena_board matches 24 run item replace entity @s[name="Schoggilolli"] hotbar.2 with minecraft:bread{display: {Name: '{"translate":"item.minecraft.cookie","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], CustomModelData: 1} 24

execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 0 run item replace entity @s inventory.0 with minecraft:arrow{display: {Name: '{"translate":"item.minecraft.arrow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]}
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 32 run item replace entity @s inventory.0 with minecraft:arrow{display: {Name: '{"translate":"item.minecraft.arrow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 32
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 64..128 run item replace entity @s inventory.0 with minecraft:arrow{display: {Name: '{"translate":"item.minecraft.arrow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 64
execute if score use_bow arena_board matches 1 if score num_arrows arena_board matches 128 run item replace entity @s inventory.1 with minecraft:arrow{display: {Name: '{"translate":"item.minecraft.arrow","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 5, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}]} 64

execute if score use_shield arena_board matches 1 run item replace entity @s weapon.offhand with minecraft:shield{display: {Name: '{"translate":"item.minecraft.shield","color":"dark_green","italic":false}'}, Unbreakable: 1b, HideFlags: 37, Enchantments: [{id: "minecraft:vanishing_curse", lvl: 1s}], BlockEntityTag: {Base: 3, Patterns: [{Color: 5, Pattern: "hhb"}, {Color: 12, Pattern: "cs"}, {Color: 5, Pattern: "bs"}, {Color: 13, Pattern: "ts"}]}}
