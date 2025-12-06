##
 # retrieve.mcfunction
 # 
 #
 # Created by .
##

execute if entity @s[tag=auranthys_display_marker] at @s run csummon item auranthys ~ ~ ~
execute if entity @s[tag=cindralis_display_marker] at @s run csummon item cindralis ~ ~ ~
execute if entity @s[tag=serenith_display_marker] at @s run csummon item serenith ~ ~ ~
execute if entity @s[tag=umbryss_display_marker] at @s run csummon item umbryss ~ ~ ~

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s

execute if entity @s[tag=auranthys_display_marker] run title @a actionbar {"bold":true,"color":"gold","text":"Someone has claimed the Legendary Auranthys.."}
execute if entity @s[tag=cindralis_display_marker] run title @a actionbar {"bold":true,"color":"gold","text":"Someone has claimed the Legendary Cindralis.."}
execute if entity @s[tag=serenith_display_marker] run title @a actionbar {"bold":true,"color":"gold","text":"Someone has claimed the Legendary Serenith.."}
execute if entity @s[tag=umbryss_display_marker] run title @a actionbar {"bold":true,"color":"gold","text":"Someone has claimed the Legendary Umbryss.."}

kill @e[tag=sword_display,distance=..4]
kill @s