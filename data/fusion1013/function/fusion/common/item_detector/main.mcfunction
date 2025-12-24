## Triggers updates for all item detectors
execute as @e[tag=item_detector] at @s run function fusion1013:fusion/common/item_detector/detect_nearby_item
execute as @e[tag=item_sacrifice] at @s positioned ~ ~-.5 ~ run cparticle display circle minecraft:end_rod .4 2 true