scoreboard players add @s teleporter 1

execute if score @s teleporter matches 22 run playsound minecraft:block.note_block.pling master @s
execute if score @s teleporter matches 42 run playsound minecraft:block.note_block.pling master @s
execute if score @s teleporter matches 62 run playsound minecraft:block.note_block.pling master @s
execute if score @s teleporter matches 82 run playsound minecraft:block.note_block.pling master @s

execute if score @s teleporter matches 1.. run effect give @s slowness 4 2 true
execute if score @s teleporter matches 1.. run effect give @s blindness 4 0 true
execute if score @s teleporter matches 1.. run particle reverse_portal ~ ~ ~ 1 1 1 0 10

execute if score @s teleporter matches 2.. run title @s actionbar {"bold":true,"color":"gold","text":"Teleporting.."}