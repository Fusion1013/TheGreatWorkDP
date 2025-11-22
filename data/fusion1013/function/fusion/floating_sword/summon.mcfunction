##
 # summon.mcfunction
 # 
 #
 # Created by .
##

execute if entity @s[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:auranthys":1}}}}}] run function fusion1013:fusion/floating_sword/auranthys
execute if entity @s[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:cindralis":1}}}}}] run function fusion1013:fusion/floating_sword/cindralis
execute if entity @s[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:serenith":1}}}}}] run function fusion1013:fusion/floating_sword/serenith
execute if entity @s[type=item,nbt={Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_data":{PublicBukkitValues:{"cobaltcore:umbryss":1}}}}}] run function fusion1013:fusion/floating_sword/umbryss

playsound minecraft:block.beacon.activate master @a ~ ~ ~

kill @s