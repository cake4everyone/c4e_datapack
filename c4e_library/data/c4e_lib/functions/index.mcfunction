execute unless score #c4e_lib_index tmp matches 0.. run return -1
execute store result score #c4e_lib_max tmp run data get storage c4e_lib:general index 1
execute if score #c4e_lib_index tmp >= #c4e_lib_max tmp run return -1

scoreboard players set #c4e_lib_count tmp 0
function c4e_lib:index/loop
scoreboard players reset * tmp

data remove storage c4e_lib:general index
data modify storage c4e_lib:general index set from storage c4e_lib:general out
data remove storage c4e_lib:general out
