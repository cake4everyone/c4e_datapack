
xp add @s 1 points

scoreboard players add xp_given forloop 1

execute if score xp_given forloop < xp_need forloop run function arena:leave_team/forloop/xp_p
