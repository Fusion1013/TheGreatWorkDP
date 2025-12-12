summon marker ~ ~ ~ {Tags:["jt_flame_pickup"]}
execute store result score @e[tag=jt_flame_pickup,distance=..1] jungle_flame_id run scoreboard players get flame_count jungle_flame
scoreboard players add flame_count jungle_flame 1