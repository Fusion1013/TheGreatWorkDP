execute as @a at @s if entity @e[tag=healing_totem,distance=..4] run scoreboard players add @s healing_totem 1
execute as @a at @s unless entity @e[tag=healing_totem,distance=..4] run scoreboard players set @s healing_totem 0

execute at @e[tag=healing_totem] positioned ~ ~-.2 ~ rotated 0 0 run cparticle display spiral minecraft:falling_spore_blossom 3 10 1 .001 .3

## Apply increasing healing
execute as @a[scores={healing_totem=40}] at @s run effect give @s absorption 300 0 true
execute as @a[scores={healing_totem=40}] at @s run particle minecraft:heart ~ ~1 ~ .3 .2 .3 0 4
execute as @a[scores={healing_totem=40}] at @s run playsound entity.witch.drink player @s

execute as @a[scores={healing_totem=80}] at @s run effect give @s absorption 300 1 true
execute as @a[scores={healing_totem=80}] at @s run particle minecraft:heart ~ ~1 ~ .3 .2 .3 0 4
execute as @a[scores={healing_totem=80}] at @s run playsound entity.witch.drink player @s

execute as @a[scores={healing_totem=120}] at @s run effect give @s absorption 300 2 true
execute as @a[scores={healing_totem=120}] at @s run particle minecraft:heart ~ ~1 ~ .3 .2 .3 0 4
execute as @a[scores={healing_totem=120}] at @s run playsound entity.witch.drink player @s

execute as @a[scores={healing_totem=160}] at @s run effect give @s absorption 300 3 true
execute as @a[scores={healing_totem=160}] at @s run particle minecraft:heart ~ ~1 ~ .3 .2 .3 0 4
execute as @a[scores={healing_totem=160}] at @s run playsound entity.witch.drink player @s

execute as @a[scores={healing_totem=200}] at @s run effect give @s absorption 300 4 true
execute as @a[scores={healing_totem=200}] at @s run particle minecraft:heart ~ ~1 ~ .3 .2 .3 0 4
execute as @a[scores={healing_totem=200}] at @s run playsound entity.witch.drink player @s