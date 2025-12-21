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

# LEATHER MATERIAL
execute as @e[tag=fc_material,tag=fc_leather] at @s if block ~ ~-1 ~ chiseled_deepslate if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:leather",count:1}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_material,tag=fc_leather] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:leather",count:1}}] run scoreboard players set @s forge 0

# Common to all material pillars
execute as @e[tag=fc_material] at @s unless block ~ ~-1 ~ chiseled_deepslate run scoreboard players set @s forge 0


## MOLD PILLARS
# BLADE MOLD
execute as @e[tag=fc_mold,tag=fc_blade_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_blade"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_blade_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_blade"}}}] run scoreboard players set @s forge 0

# SPEAR MOLD
execute as @e[tag=fc_mold,tag=fc_spear_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_spearhead"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_spear_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_spearhead"}}}] run scoreboard players set @s forge 0

# BATTLEAXE MOLD
execute as @e[tag=fc_mold,tag=fc_battleaxe_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_battleaxe"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_battleaxe_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_battleaxe"}}}] run scoreboard players set @s forge 0

# HELMET MOLD
execute as @e[tag=fc_mold,tag=fc_helmet_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_helmet"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_helmet_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_helmet"}}}] run scoreboard players set @s forge 0

# CHESTPLATE MOLD
execute as @e[tag=fc_mold,tag=fc_chestplate_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_chestplate"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_chestplate_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_chestplate"}}}] run scoreboard players set @s forge 0

# LEGGINGS MOLD
execute as @e[tag=fc_mold,tag=fc_leggings_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_leggings"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_leggings_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_leggings"}}}] run scoreboard players set @s forge 0

# BOOTS MOLD
execute as @e[tag=fc_mold,tag=fc_boots_mold] at @s if block ~ ~-1 ~ anvil if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_boots"}}}] run scoreboard players set @s forge 1
execute as @e[tag=fc_mold,tag=fc_boots_mold] at @s unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/mold_boots"}}}] run scoreboard players set @s forge 0

# Common to all mold pillars
execute as @e[tag=fc_mold] at @s unless block ~ ~-1 ~ anvil run scoreboard players set @s forge 0