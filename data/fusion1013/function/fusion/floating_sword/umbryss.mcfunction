##
 # umbryss.mcfunction
 # 
 #
 # Created by .
##

summon marker ~ ~ ~ {Tags:["sword_display_marker","umbryss_display_marker"]}
summon item_display ~ ~ ~ {Tags:["sword_display","umbryss_display"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0.9211854f,0.389124f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:item_model":"thegreatwork:sword/bone_sword_black"}}}