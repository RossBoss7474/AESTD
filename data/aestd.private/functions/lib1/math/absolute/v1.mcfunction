# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players set @s aestd.math.out 0
execute if score @s aestd.math.in matches ..-1 run scoreboard players operation @s aestd.math.out -= @s aestd.math.in
execute if score @s aestd.math.in matches 0.. run scoreboard players operation @s aestd.math.out += @s aestd.math.in
