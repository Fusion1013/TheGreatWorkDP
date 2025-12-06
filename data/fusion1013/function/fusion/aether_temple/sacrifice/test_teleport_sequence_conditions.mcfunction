## Should be executed at the center of the aether temple

## Debug
particle end_rod ~ ~ ~ .1 .1 .1 0 1


execute if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:iron_block"}}] run scoreboard players set iron aether_temple 1
execute unless entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:iron_block"}}] run scoreboard players set iron aether_temple 0

execute if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:copper_block"}}] run scoreboard players set copper aether_temple 1
execute unless entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:copper_block"}}] run scoreboard players set copper aether_temple 0

execute if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}] run scoreboard players set gold aether_temple 1
execute unless entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}] run scoreboard players set gold aether_temple 0


execute if score iron aether_temple matches 1 if score gold aether_temple matches 1 if score copper aether_temple matches 1 as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:iron_block"}}] at @s run function fusion1013:fusion/aether_temple/sacrifice/replace_with_item_display
execute if score iron aether_temple matches 1 if score gold aether_temple matches 1 if score copper aether_temple matches 1 as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:copper_block"}}] at @s run function fusion1013:fusion/aether_temple/sacrifice/replace_with_item_display
execute if score iron aether_temple matches 1 if score gold aether_temple matches 1 if score copper aether_temple matches 1 as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:gold_block"}}] at @s run function fusion1013:fusion/aether_temple/sacrifice/replace_with_item_display

kill @e[tag=ae_tp_item]

execute if score iron aether_temple matches 1 if score gold aether_temple matches 1 if score copper aether_temple matches 1 run function fusion1013:fusion/aether_temple/sacrifice/teleport_sequence