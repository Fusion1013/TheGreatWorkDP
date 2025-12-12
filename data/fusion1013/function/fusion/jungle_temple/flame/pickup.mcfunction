## Particles at flame pickup station

particle soul_fire_flame ~ ~ ~ .1 .1 .1 0 1


## Give player flame if near one
execute as @a[distance=..1] unless score @s jungle_flame matches 1.. run title @s actionbar {"bold":true,"color":"gold","text":"Picked up the Flame of Living Breath"}
execute as @a[distance=..1] unless score @s jungle_flame matches 1.. run playsound block.note_block.pling player @s ~ ~ ~
execute as @a[distance=..1] unless score @s jungle_flame matches 1.. store result score @s jungle_flame as @e[tag=jt_flame_pickup,distance=..2] run scoreboard players get @s jungle_flame_id