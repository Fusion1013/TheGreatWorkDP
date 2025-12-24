##
 # consume_item.mcfunction
 # 
 #
 # Created by Fusion1013.
##

scoreboard players add @s item_sacrifice 1


execute if score @s item_sacrifice matches 10.. run particle end_rod ~ ~.5 ~ .3 .3 .3 0 1
execute if score @s item_sacrifice matches 40 run particle end_rod ~ ~ ~ .5 .5 .5 0 10
execute if score @s item_sacrifice matches 40 run scoreboard players set @e[type=marker,tag=item_sacrifice,distance=..4] item_sacrifice 1


execute if score @s item_sacrifice matches 40 run summon lightning_bolt
execute if score @s item_sacrifice matches 40 if entity @s[type=item] run kill @s
execute if score @s item_sacrifice matches 40 run setblock ~ ~-4 ~ redstone_block
execute if score @s item_sacrifice matches 40 as @e[tag=item_sacrifice,distance=..1] run scoreboard players set @s item_sacrifice 1