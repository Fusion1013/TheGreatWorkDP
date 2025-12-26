scoreboard players set running primordial_forge 1

execute if score craft_timer primordial_forge matches 40 as @e[tag=pforge_pedestal_east] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 10

execute if score craft_timer primordial_forge matches 80 as @e[tag=pforge_pedestal_south] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 10

execute if score craft_timer primordial_forge matches 120 as @e[tag=pforge_pedestal_west] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 10

execute if score craft_timer primordial_forge matches 160 as @e[tag=pforge_pedestal_north] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 10



scoreboard players add craft_timer primordial_forge 1
execute if score craft_timer primordial_forge matches ..200 run schedule function fusion1013:fusion/primordial_forge/first_matter/crafting/craft_sequence 1
execute unless score craft_timer primordial_forge matches ..200 run scoreboard players set craft_timer primordial_forge 0