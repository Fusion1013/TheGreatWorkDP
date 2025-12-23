data modify storage temp:copy item set from entity @e[type=item,limit=1,sort=nearest,distance=..3] Item
data modify block ~ ~-2 ~ Items[0] set from storage temp:copy item
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..3] at @s run function fusion1013:fusion/item_sacrifice/consume_item