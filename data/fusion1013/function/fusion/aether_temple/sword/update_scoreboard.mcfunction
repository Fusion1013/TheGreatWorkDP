##
 # update_scoreboard.mcfunction
 # 
 #
 # Created by Fusion1013.
##

execute in minecraft:overworld positioned 218 86 100 if entity @e[tag=auranthys_display_marker,distance=..2] run scoreboard players set sword_green aether_temple 1
execute in minecraft:overworld positioned 218 86 100 unless entity @e[tag=auranthys_display_marker,distance=..2] run scoreboard players set sword_green aether_temple 0

execute in minecraft:overworld positioned 244 86 82 if entity @e[tag=cindralis_display_marker,distance=..2] run scoreboard players set sword_red aether_temple 1
execute in minecraft:overworld positioned 244 86 82 unless entity @e[tag=cindralis_display_marker,distance=..2] run scoreboard players set sword_red aether_temple 0

execute in minecraft:overworld positioned 270 86 100 if entity @e[tag=serenith_display_marker,distance=..2] run scoreboard players set sword_blue aether_temple 1
execute in minecraft:overworld positioned 270 86 100 unless entity @e[tag=serenith_display_marker,distance=..2] run scoreboard players set sword_blue aether_temple 0