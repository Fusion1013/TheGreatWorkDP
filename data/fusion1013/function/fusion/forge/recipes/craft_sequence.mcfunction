execute as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run cparticle display sphere minecraft:end_rod .5 10
execute as @e[tag=fc_blade_mold] at @s positioned ~ ~-1 ~ rotated 0 0 run cparticle display spiral minecraft:end_rod 5 10 2 .001 1
# execute as @e[tag=fc_marker] at @s run particle end_rod ~ ~ ~ 0 0 0 .1 1

execute if score craft_timer forge matches 10 as @e[tag=fc_blade_mold] at @s run playsound thegreatwork:sfx.ominous_woosh.1 player @a ~ ~ ~
execute if score craft_timer forge matches 10 as @e[tag=fc_blade_mold] at @s run playsound thegreatwork:sfx.seal.1 player @a ~ ~ ~


## Consume items effects
execute if score craft_timer forge matches 50 as @e[tag=fc_blade_mold] at @s run playsound entity.illusioner.cast_spell player @a ~ ~ ~
execute if score craft_timer forge matches 50 as @e[tag=fc_material] at @s run particle end_rod ~ ~ ~ 0 0 0 .4 15
execute if score craft_timer forge matches 50 as @e[tag=fc_material] at @s as @e[type=item,distance=..1] run kill @s

execute if score craft_timer forge matches 100 as @e[tag=fc_blade_mold] at @s run playsound entity.illusioner.cast_spell player @a ~ ~ ~
execute if score craft_timer forge matches 100 as @e[tag=fc_dust] at @s run particle end_rod ~ ~ ~ 0 0 0 .4 15
execute if score craft_timer forge matches 100 as @e[tag=fc_dust] at @s as @e[type=item,distance=..1] run kill @s

execute if score craft_timer forge matches 150 as @e[tag=fc_blade_mold] at @s run playsound entity.illusioner.cast_spell player @a ~ ~ ~
execute if score craft_timer forge matches 150 as @e[tag=fc_blade_mold] at @s run particle end_rod ~ ~ ~ 0 0 0 .4 15
execute if score craft_timer forge matches 150 as @e[tag=fc_blade_mold] at @s as @e[type=item,distance=..1] run kill @s


## Middle flashes
execute if score craft_timer forge matches 25 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle flash ~ ~ ~ 0 0 0 0 1
execute if score craft_timer forge matches 25 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0 0 0 .8 40
execute if score craft_timer forge matches 25 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~
execute if score craft_timer forge matches 75 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle flash ~ ~ ~ 0 0 0 0 1
execute if score craft_timer forge matches 75 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0 0 0 .8 40
execute if score craft_timer forge matches 75 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~
execute if score craft_timer forge matches 125 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle flash ~ ~ ~ 0 0 0 0 1
execute if score craft_timer forge matches 125 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0 0 0 .8 40
execute if score craft_timer forge matches 125 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~
execute if score craft_timer forge matches 175 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle flash ~ ~ ~ 0 0 0 0 1
execute if score craft_timer forge matches 175 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0 0 0 .8 40
execute if score craft_timer forge matches 175 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~

## Finish effects
execute if score craft_timer forge matches 199 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0 0 0 1 20
execute if score craft_timer forge matches 199 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 2

## Summon item
execute if score craft_timer forge matches 199 if score diamond_sword forge matches 1 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",count:1}}
execute if score craft_timer forge matches 199 if score diamond_battleaxe forge matches 1 as @e[tag=fc_battleaxe_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:item_model":"thegreatwork:axe/diamond_battleaxe","minecraft:custom_name":{"italic":false,"text":"Diamond Battleaxe"}}}}
execute if score craft_timer forge matches 199 if score diamond_helmet forge matches 1 as @e[tag=fc_helmet_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_helmet",count:1}}
execute if score craft_timer forge matches 199 if score diamond_chestplate forge matches 1 as @e[tag=fc_chestplate_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_chestplate",count:1}}
execute if score craft_timer forge matches 199 if score diamond_leggings forge matches 1 as @e[tag=fc_leggings_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_leggings",count:1}}
execute if score craft_timer forge matches 199 if score diamond_boots forge matches 1 as @e[tag=fc_boots_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_boots",count:1}}

execute if score craft_timer forge matches 199 as @e[tag=fc_marker] at @s as @e[type=item,distance=..1] run kill @s

## Reset all scores
execute if score craft_timer forge matches 199 run scoreboard players set diamond_sword forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_spear forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_battleaxe forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_helmet forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_chestplate forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_leggings forge 0
execute if score craft_timer forge matches 199 run scoreboard players set diamond_boots forge 0

scoreboard players add craft_timer forge 1
execute if score craft_timer forge matches ..200 run schedule function fusion1013:fusion/forge/recipes/craft_sequence 1
execute unless score craft_timer forge matches ..200 run scoreboard players set craft_timer forge 0