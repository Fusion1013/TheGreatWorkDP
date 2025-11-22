## Particles at flame pickup station

execute as @e[tag=jt_flame_pickup] at @s run particle soul_fire_flame ~ ~ ~ .1 .1 .1 0 1


## Check if player is near a flame
execute as @e[tag=jt_flame_pickup] at @s as @a[distance=..1] store result score @s jungle_flame as @e[tag=jt_flame_pickup,distance=..2] run scoreboard players get @s jungle_flame