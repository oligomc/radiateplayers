# this function is a duplicate of loop/main but removes the section updating marker rotation since it is not needed on the final iteration. For comments on this code, see loop/main
execute rotated as @s positioned 0.0 ~ 0.0 positioned ^ ^ ^1 run tp @s ~ ~ ~
execute store result score #vx radiateplayers run data get entity @s Pos[0] 10
execute store result score #vz radiateplayers run data get entity @s Pos[2] 10
scoreboard players operation #vx radiateplayers *= #r radiateplayers
scoreboard players operation #vz radiateplayers *= #r radiateplayers
scoreboard players operation #vx radiateplayers += #cx radiateplayers
scoreboard players operation #vz radiateplayers += #cz radiateplayers
execute store result entity @s Pos[0] double 0.1 run scoreboard players get #vx radiateplayers
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #vz radiateplayers
execute unless score #surface radiateplayers matches 0 at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s as @e[tag=radiate, sort=random, limit=1] run function rp:rad/loop/tp
