data modify storage temp:item_detector item set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
data modify block ~ ~-2 ~ Items[0] set from storage temp:item_detector item
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..1] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1