## store radius and center coords (scaled by factor of 10)
execute store result score #cx radiateplayers run data get entity @s Pos[0] 10
execute store result score #cz radiateplayers run data get entity @s Pos[2] 10

## offset rotation by theta
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #t radiateplayers = #theta radiateplayers

## calculate dt (change in rotation per iteration)
scoreboard players operation #t radiateplayers *= #mag6 radiateplayers
scoreboard players set #dt radiateplayers 360000000
scoreboard players operation #dt radiateplayers /= #n radiateplayers

## find target destinations and teleport
function rp:rad/loop/main
function rp:rad/loop/exit

## remove marker entity
kill @s
