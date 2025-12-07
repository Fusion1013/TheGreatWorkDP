## FORGE DUST PILLARS
execute as @e[tag=fc_dust] at @s if block ~ ~-1 ~ reinforced_deepslate if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_dust] at @s unless block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @s forge 0
execute as @e[tag=fc_dust] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 0


## MATERIAL PILLARS
# OAK LOG MATERIAL
execute as @e[tag=fc_material,tag=fc_oak_log] at @s if block ~ ~-1 ~ chiseled_deepslate if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:oak_log",count:1}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_material,tag=fc_oak_log] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:oak_log",count:1}}] run scoreboard players set @s forge 0

# DIAMOND BLOCK MATERIAL
execute as @e[tag=fc_material,tag=fc_diamond_block] at @s if block ~ ~-1 ~ chiseled_deepslate if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond_block",count:1}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_material,tag=fc_diamond_block] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond_block",count:1}}] run scoreboard players set @s forge 0

# Common to all material pillars
execute as @e[tag=fc_material] at @s unless block ~ ~-1 ~ chiseled_deepslate run scoreboard players set @s forge 0

## MOLD PILLARS
# BLADE MOLD
execute as @e[tag=fc_mold,tag=fc_blade_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_blade"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_blade_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_blade"}}}] run scoreboard players set @s forge 0

# Common to all mold pillars
execute as @e[tag=fc_mold] at @s unless block ~ ~-1 ~ anvil run scoreboard players set @s forge 0