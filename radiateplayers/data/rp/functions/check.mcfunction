## get number of players with radiate tag
execute store result score #i radiateplayers store result score #n radiateplayers if entity @e[tag=radiate]

## query forceload at chunk [0, 0]
execute store success score #fl radiateplayers run forceload query 0 0

## if radius > 0, n > 1, 360 >= theta >= -360, and [0, 0] chunk is loaded goto rp:rad/main, else rp:error
execute unless predicate rp:check run function rp:error
execute if predicate rp:check run function rp:rad/main

## reset score and reenable scoreboard
scoreboard players set @s radiateplayers 0
scoreboard players enable @s radiateplayers