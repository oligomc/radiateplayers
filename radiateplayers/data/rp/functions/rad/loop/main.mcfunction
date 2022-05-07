## get unit vector
execute rotated as @s positioned 0.0 ~ 0.0 positioned ^ ^ ^1 run tp @s ~ ~ ~
execute store result score #vx radiateplayers run data get entity @s Pos[0] 10
execute store result score #vz radiateplayers run data get entity @s Pos[2] 10

## scale unit vector by r
scoreboard players operation #vx radiateplayers *= #r radiateplayers
scoreboard players operation #vz radiateplayers *= #r radiateplayers

## add scaled vector to center coords
scoreboard players operation #vx radiateplayers += #cx radiateplayers
scoreboard players operation #vz radiateplayers += #cz radiateplayers

## update coords of marker
execute store result entity @s Pos[0] double 0.1 run scoreboard players get #vx radiateplayers
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #vz radiateplayers

## find walkable surface
# if surface is true, run spreadplayers command centered at rp.vec to teleport to surface. Unfortunately, maxRadius cannot be smaller than 1 which causes target to move in a 2x2 area along xz plane randomly, thus losing precision. However, this is still fastest way to find surface. 
execute unless score #surface radiateplayers matches 0 at @s run spreadplayers ~ ~ 0 1 false @s

## tp random target to marker
execute at @s as @e[tag=radiate, sort=random, limit=1] run function rp:rad/loop/tp

## update marker rotation
scoreboard players operation #t radiateplayers += #dt radiateplayers
execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get #t radiateplayers

## iterate
scoreboard players remove #n radiateplayers 1
execute unless score #n radiateplayers matches ..1 run function rp:rad/loop/main