execute as @e[tag=jt_flame_pickup] at @s run function fusion1013:fusion/jungle_temple/flame/pickup


## Particles at player holding flame
execute as @a unless score @s jungle_flame matches ..0 at @s run particle soul_fire_flame ~ ~1 ~ .3 .5 .3 0 1

## Update fail check
execute as @a if score @s jungle_flame_damage matches 1.. run scoreboard players set @s jungle_flame_interrupted 1
execute as @a if score @s jungle_flame_sprint matches 1.. run scoreboard players set @s jungle_flame_interrupted 1

execute as @a unless score @s jungle_flame_damage matches 1.. unless score @s jungle_flame_sprint matches 1.. run scoreboard players set @s jungle_flame_interrupted 0
execute as @a if score @s jungle_flame_damage matches 1.. run scoreboard players set @s jungle_flame_damage 0
execute as @a if score @s jungle_flame_sprint matches 1.. run scoreboard players set @s jungle_flame_sprint 0


## If player takes damage, remove flame
execute as @a if score @s jungle_flame matches 1.. if score @s jungle_flame_interrupted matches 1.. run title @s actionbar {"bold":true,"color":"gold","text":"You lost the Flame of Living Breath.."}
execute as @a if score @s jungle_flame matches 1.. if score @s jungle_flame_interrupted matches 1.. at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~
execute as @a if score @s jungle_flame matches 1.. if score @s jungle_flame_interrupted matches 1.. run scoreboard players set @s jungle_flame -1
scoreboard players set @a jungle_flame_interrupted 0



## Check lock
execute as @a at @s as @e[tag=jt_flame_deposit,distance=..3] unless score @s jungle_flame matches 1.. if score @s jungle_flame_id = @p jungle_flame as @p run title @s actionbar {"bold":true,"color":"gold","text":"The temple accepts your Flame of Living Breath.."}
execute as @a at @s as @e[tag=jt_flame_deposit,distance=..3] unless score @s jungle_flame matches 1.. if score @s jungle_flame_id = @p jungle_flame as @p run playsound block.beacon.power_select player @a ~ ~ ~
execute as @a at @s as @e[tag=jt_flame_deposit,distance=..3] unless score @s jungle_flame matches 1.. if score @s jungle_flame_id = @p jungle_flame run particle soul_fire_flame ~ ~ ~ 1 1 1 0 40
execute as @a at @s as @e[tag=jt_flame_deposit,distance=..3] unless score @s jungle_flame matches 1.. if score @s jungle_flame_id = @p jungle_flame run scoreboard players set @s jungle_flame 1
execute as @a at @s as @e[tag=jt_flame_deposit,distance=..3] if score @s jungle_flame_id = @p jungle_flame as @p run scoreboard players set @s jungle_flame -1

## Lock Particles
execute as @e[tag=jt_flame_deposit] if score @s jungle_flame matches 1 at @s run particle soul_fire_flame ~ ~ ~ .3 .3 .3 0 1