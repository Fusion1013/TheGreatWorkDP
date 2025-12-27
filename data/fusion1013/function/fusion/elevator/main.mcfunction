execute as @a at @s if entity @e[tag=elevator,distance=..2] run scoreboard players add @s elevator 1
execute as @a at @s unless entity @e[tag=elevator,distance=..2] run scoreboard players set @s elevator 0

execute as @a[scores={elevator=40..}] at @s if entity @e[tag=elevator,distance=..2] run particle minecraft:effect ~ ~1 ~ .4 .4 .4 0 1
execute as @a[scores={elevator=40..}] at @s if entity @e[tag=elevator,distance=..1.5] run effect give @s levitation 1 2 true

execute as @e[tag=elevator] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1

execute at @e[tag=elevator] run cparticle display spiral minecraft:effect 1 6 1 0.001 2