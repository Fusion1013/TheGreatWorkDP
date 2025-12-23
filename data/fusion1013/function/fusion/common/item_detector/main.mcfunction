## Triggers updates for all item detectors
execute as @e[tag=item_detector] at @s unless score @s item_detector matches 1 run function fusion1013:fusion/common/item_detector/detect_nearby_item