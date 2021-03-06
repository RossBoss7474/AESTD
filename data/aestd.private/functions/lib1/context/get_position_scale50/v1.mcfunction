# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Spawn a marker
execute unless blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run data remove storage aestd:private Pos
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aestd", "aestd.context.position_cloud"]}
data modify storage aestd:private Pos set from entity @e[type=minecraft:area_effect_cloud, tag=aestd.context.position_cloud, limit=1] Pos

# Save position to #aestd score
execute store result score #aestd aestd.pos.x run data get storage aestd:private Pos[0] 50
execute store result score #aestd aestd.pos.y run data get storage aestd:private Pos[1] 50
execute store result score #aestd aestd.pos.z run data get storage aestd:private Pos[2] 50

# Save score to executing entity, if there is one
scoreboard players operation @s aestd.pos.x = #aestd aestd.pos.x
scoreboard players operation @s aestd.pos.y = #aestd aestd.pos.y
scoreboard players operation @s aestd.pos.z = #aestd aestd.pos.z
