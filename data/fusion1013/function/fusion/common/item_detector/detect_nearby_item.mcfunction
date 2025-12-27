## Update item in barrel
execute if entity @e[type=item,distance=..0.75] run data modify storage temp:item_detector item set from entity @e[type=item,limit=1,sort=nearest,distance=..0.75] Item
execute if entity @e[type=item,distance=..0.75] run data modify block ~ ~-2 ~ Items[0] set from storage temp:item_detector item

## Play insert sound
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all unless score @s item_detector matches 1 run playsound block.trial_spawner.spawn_item block @a ~ ~ ~

## Update detector score
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all run scoreboard players set @s item_detector 1
execute unless blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all run scoreboard players set @s item_detector 0
execute unless entity @e[type=item,distance=..0.75] run scoreboard players set @s item_detector 0

## Item particles
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.75] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1

## Set item position to detector middle
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.75] run tp @s ~ ~ ~
execute if blocks ~ ~-2 ~ ~ ~-2 ~ ~ ~-3 ~ all as @e[type=item,limit=1,sort=nearest,distance=..0.75] run data merge entity @s {Motion:[0.0,0.0,0.0],NoGravity:1b}