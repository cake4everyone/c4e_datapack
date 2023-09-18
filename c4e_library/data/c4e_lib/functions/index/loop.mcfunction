execute if score #c4e_lib_count tmp = #c4e_lib_index tmp run data modify storage c4e_lib:general out set from storage c4e_lib:general index[0]
execute if score #c4e_lib_count tmp >= #c4e_lib_index tmp run return 0

data modify storage c4e_lib:general index append from storage c4e_lib:general index[0]
data remove storage c4e_lib:general index[0]
scoreboard players add #c4e_lib_count tmp 1
function c4e_lib:index/loop
