# Author: Aeldrion
# Version: 19w42a
# Project: AESTD v1.0

# Removes a duration in ticks from the world time (opposite operation of time add)
# If an entity is executing this function, its score will be used. Otherwise (function ran from a command block or from #minecraft:load), uses the score of #aestd
# Input: aestd.time

function #aestd.private:lib1/world/remove_time