# trigger to be enable for every player and used to toggele visibility of item frames
scoreboard objectives add item_frame trigger {"translate":"item.minecraft.item_frame","color": "gold"}
scoreboard players set $max item_frame 50
scoreboard objectives add set_visible dummy
scoreboard objectives add set_invisible dummy

# used to show and hide a scorboard when sneaking
team add sneak
team modify sneak color white
