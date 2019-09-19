# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets the executing entity's motion from its motion scores divided by 1000
# Input: aestd.motion.x|aestd.motion.y|aestd.motion.z

# WARNING: Does not work on players and entities that use direction instead of Motion (eg fireballs)

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s aestd.motion.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s aestd.motion.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s aestd.motion.z
