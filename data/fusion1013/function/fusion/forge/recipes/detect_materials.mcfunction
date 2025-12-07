execute as @e[tag=fc_dust] at @s if block ~ ~-1 ~ reinforced_deepslate if entity @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 1

execute as @e[tag=fc_dust] at @s unless block ~ ~-1 ~ reinforced_deepslate run scoreboard players set @s forge 0
execute as @e[tag=fc_dust] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"thegreatwork:forge/forgedust"}}}] run scoreboard players set @s forge 0


