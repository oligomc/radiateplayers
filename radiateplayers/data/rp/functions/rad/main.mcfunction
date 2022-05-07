## store radius in r
scoreboard players operation #r radiateplayers = @s radiateplayers

## summon marker and find target destinations
# summoned at location of command's execution
summon marker ~ ~ ~ {Tags:["rp.vec"], CustomName:'{"text":"vec"}'}
execute as @e[type=marker, tag=rp.vec] at @s run function rp:rad/nest 

## success message
scoreboard players operation #cx radiateplayers /= #mag1 radiateplayers
scoreboard players operation #cz radiateplayers /= #mag1 radiateplayers
tellraw @s [{"text":"Distributed "}, {"score":{"objective":"radiateplayers","name":"#i"}}, {"text":" players around a circle of radius "}, {"score":{"objective":"radiateplayers","name":"#r"}}, {"text":" at "}, {"score":{"objective":"radiateplayers","name":"#cx"}}, {"text":", "}, {"score":{"objective":"radiateplayers","name":"#cz"}}]