## If sacrifice does not have detector tag, add it
execute as @e[tag=item_sacrifice] unless entity @s[tag=item_detector] run tag @s add item_detector

## If the detector is true, trigger consumer
execute as @e[tag=item_sacrifice,scores={item_detector=1}] at @s unless score @s item_sacrifice matches 1 as @e[type=item,distance=..0.5] run function fusion1013:fusion/common/item_sacrifice/consume_item