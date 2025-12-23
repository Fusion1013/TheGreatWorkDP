execute as @e[tag=pforge_pedestal_north] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:material/ethesia_catalyst"}}}] run scoreboard players set ethesia_north primordial_forge 1
execute as @e[tag=pforge_pedestal_north] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:material/ethesia_catalyst"}}}] run scoreboard players set ethesia_north primordial_forge 0

execute as @e[tag=pforge_pedestal_south] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:ingot/molten_gold_ingot"}}}] run scoreboard players set molten_gold_south primordial_forge 1
execute as @e[tag=pforge_pedestal_south] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:ingot/molten_gold_ingot"}}}] run scoreboard players set molten_gold_south primordial_forge 0

execute as @e[tag=pforge_pedestal_east] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:potion/royal_water"}}}] run scoreboard players set royal_water_east primordial_forge 1
execute as @e[tag=pforge_pedestal_east] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:potion/royal_water"}}}] run scoreboard players set royal_water_east primordial_forge 0

execute as @e[tag=pforge_pedestal_west] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:potion/spirit_of_heaven"}}}] run scoreboard players set spirit_of_heaven_west primordial_forge 1
execute as @e[tag=pforge_pedestal_west] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:potion/spirit_of_heaven"}}}] run scoreboard players set spirit_of_heaven_west primordial_forge 0


execute as @e[tag=pforge_pedestal] at @s as @e[type=item,distance=..1] run tp @s ~ ~ ~