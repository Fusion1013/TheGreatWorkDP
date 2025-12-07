execute as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run cparticle display sphere minecraft:end_rod .5 10
execute as @e[tag=fc_marker] at @s run particle end_rod ~ ~ ~ 0 0 0 .1 1

execute if score craft_timer forge matches 99 if score diamond_sword forge matches 1 as @e[tag=fc_blade_mold] at @s positioned ~ ~5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",count:1}}
execute if score craft_timer forge matches 99 as @e[tag=fc_marker] at @s as @e[type=item,distance=..1] run kill @s

# Reset all scores
execute if score craft_timer forge matches 99 run scoreboard players set diamond_sword forge 0

scoreboard players add craft_timer forge 1
execute if score craft_timer forge matches ..100 run schedule function fusion1013:fusion/forge/recipes/craft_sequence 1
execute unless score craft_timer forge matches ..100 run scoreboard players set craft_timer forge 0