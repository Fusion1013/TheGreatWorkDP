execute as @e[tag=fc_dust] at @s if block ~ ~-1 ~ reinforced_deepslate if entity @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 1

execute as @e[tag=fc_dust] at @s unless block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @s forge 0
execute as @e[tag=fc_dust] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 0


execute as @e[tag=fc_material,tag=fc_oak_log] at @s if block ~ ~-1 ~ chiseled_deepslate if entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}}] run scoreboard players set @s forge 1

execute as @e[tag=fc_material,tag=fc_oak_log] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}}] run scoreboard players set @s forge 0

## Common to all material pillars
execute as @e[tag=fc_material] at @s unless block ~ ~-1 ~ chiseled_deepslate run scoreboard players set @s forge 0