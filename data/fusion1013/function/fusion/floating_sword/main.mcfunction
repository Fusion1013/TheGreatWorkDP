##
 # main.mcfunction
 # 
 #
 # Created by .
##

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:auranthys":1}}}}}] run scoreboard players add @s floating_sword 1
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:cindralis":1}}}}}] run scoreboard players add @s floating_sword 1
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:serenith":1}}}}}] run scoreboard players add @s floating_sword 1
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:umbryss":1}}}}}] run scoreboard players add @s floating_sword 1

execute as @e[type=item,scores={floating_sword=10..}] at @s run particle end_rod ~ ~.3 ~ 0.1 0.1 0.1 0 1
execute as @e[type=item,scores={floating_sword=100..}] at @s run function fusion1013:fusion/floating_sword/summon


## Floating sword display tick


## Auranthys
execute as @e[tag=auranthys_display_marker] at @s as @e[tag=auranthys_display,distance=..2] run ease between @s ~ ~1.5 ~ ~ ~1.9 ~ 0.0005 EaseInOutSine
execute as @e[tag=auranthys_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant 1.8 4 1 0.001 0.1
execute as @e[tag=auranthys_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant .4 4 1 0.001 1.3

## Cindralis
execute as @e[tag=cindralis_display_marker] at @s as @e[tag=cindralis_display,distance=..2] run ease between @s ~ ~1.5 ~ ~ ~1.9 ~ 0.0005 EaseInOutSine
execute as @e[tag=cindralis_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant 1.8 4 1 0.001 0.1
execute as @e[tag=cindralis_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant .4 4 1 0.001 1.3

## Serenith
execute as @e[tag=serenith_display_marker] at @s as @e[tag=serenith_display,distance=..2] run ease between @s ~ ~1.5 ~ ~ ~1.9 ~ 0.0005 EaseInOutSine
execute as @e[tag=serenith_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant 1.8 4 1 0.001 0.1
execute as @e[tag=serenith_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant .4 4 1 0.001 1.3

## Umbryss
execute as @e[tag=umbryss_display_marker] at @s as @e[tag=umbryss_display,distance=..2] run ease between @s ~ ~1.5 ~ ~ ~1.9 ~ 0.0005 EaseInOutSine
execute as @e[tag=umbryss_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant 1.8 4 1 0.001 0.1
execute as @e[tag=umbryss_display_marker] at @s positioned ~ ~1.7 ~ run cparticle display spiral minecraft:enchant .4 4 1 0.001 1.3


## Retrieving
execute as @a[scores={floating_sword_sneaking=1..}] at @s if entity @e[tag=sword_display_marker,distance=..4] run scoreboard players add @s floating_sword 1

execute as @a[scores={floating_sword=2}] at @s if entity @e[tag=sword_display_marker,distance=..4] run playsound minecraft:block.note_block.pling master @s
execute as @a[scores={floating_sword=22}] at @s if entity @e[tag=sword_display_marker,distance=..4] run playsound minecraft:block.note_block.pling master @s
execute as @a[scores={floating_sword=42}] at @s if entity @e[tag=sword_display_marker,distance=..4] run playsound minecraft:block.note_block.pling master @s
execute as @a[scores={floating_sword=62}] at @s if entity @e[tag=sword_display_marker,distance=..4] run playsound minecraft:block.note_block.pling master @s
execute as @a[scores={floating_sword=82}] at @s if entity @e[tag=sword_display_marker,distance=..4] run playsound minecraft:block.note_block.pling master @s

execute as @a[scores={floating_sword=2}] at @s if entity @e[tag=sword_display_marker,distance=..4] run title @a actionbar {"bold":true,"color":"gold","text":"Retrieving sword.."}

execute as @a[scores={floating_sword_sneaking=..0}] run scoreboard players set @s floating_sword 0
execute as @a run scoreboard players set @s floating_sword_sneaking 0

execute as @a[scores={floating_sword=1..}] at @s at @e[tag=sword_display,distance=..4] run particle end_rod ~ ~ ~ .2 .5 .2 0 1
execute as @a[scores={floating_sword=1..}] at @s as @e[tag=sword_display,distance=..4] run data merge entity @s {Glowing:1b}
execute as @a[scores={floating_sword=0}] at @s as @e[tag=sword_display,distance=..4] run data merge entity @s {Glowing:0b}
execute as @a[scores={floating_sword=100..}] at @s as @e[tag=sword_display_marker,distance=..4] run function fusion1013:fusion/floating_sword/retrieve



execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:auranthys":1}}}}}] run function fusion1013:fusion/util/important_item
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:cindralis":1}}}}}] run function fusion1013:fusion/util/important_item
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:serenith":1}}}}}] run function fusion1013:fusion/util/important_item
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:umbryss":1}}}}}] run function fusion1013:fusion/util/important_item