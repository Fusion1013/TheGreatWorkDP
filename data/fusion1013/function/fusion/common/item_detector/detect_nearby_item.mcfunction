## Update item in barrel
data modify storage temp:item_detector item set from entity @e[type=item,limit=1,sort=nearest,distance=..0.5] Item
data modify block ~ ~-2 ~ Items[0] set from storage temp:item_detector item

## Update detector score
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all run scoreboard players set @s item_detector 1
execute unless blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all run scoreboard players set @s item_detector 0

## Item particles
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.5] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1

## Set item position to detector middle
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.5] run tp @s ~ ~ ~
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.5] run data merge entity @s {Motion:[0.0,0.0,0.0]}