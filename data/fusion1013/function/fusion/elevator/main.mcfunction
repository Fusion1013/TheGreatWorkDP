execute as @a unless score @s elevator matches 41.. at @s if entity @e[tag=elevator,distance=..2] run scoreboard players add @s elevator 1
execute as @a[scores={elevator=1..}] at @s unless entity @e[tag=elevator,distance=..2] unless block ~ ~-1 ~ air run scoreboard players remove @s elevator 1

execute as @a[scores={elevator=40..}] at @s if entity @e[tag=elevator,distance=..2] run particle minecraft:effect ~ ~1 ~ .4 .4 .4 0 1
execute as @a[scores={elevator=40..}] at @s if entity @e[tag=elevator,distance=..1.5] run effect give @s levitation 1 2 true

execute as @e[tag=elevator] at @s run particle effect ~ ~ ~ .2 .2 .2 0 1

execute at @e[tag=elevator] run cparticle display spiral minecraft:entity_effect{color:[1,1,1,1]} 1 6 1 0.001 2