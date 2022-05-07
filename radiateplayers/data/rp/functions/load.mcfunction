## remove all assets
scoreboard objectives remove radiateplayers

## create all assets
scoreboard objectives add radiateplayers trigger
scoreboard players set #theta radiateplayers 0
scoreboard players set #align radiateplayers 0
scoreboard players set #surface radiateplayers 1
scoreboard players set #mag1 radiateplayers 10
scoreboard players set #mag6 radiateplayers 1000000
forceload add 0 0
# this ensures only players that have access to the execute command can be enabled on the scoreboard
execute as @a run scoreboard players enable @s radiateplayers