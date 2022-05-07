## tp player to marker
execute unless score #align radiateplayers matches 0 align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if score #align radiateplayers matches 0 run tp @s ~ ~ ~
tag @s remove radiate
