##
 # teleport_sequence.mcfunction
 # 
 #
 # Created by Fusion1013.
##


## 1. Give all players in the temple (has 'in_aether_temple' tag) levitation (slow)
## 2. Play some cool stinger
## 3. Wait a few seconds
## 4. Strike players with lightning, obscuring their vision slightly (^ ^0.5 ^0.5)
## 5. Teleport players -61 blocks down relative to their position



execute if score teleport_timer aether_temple matches 1 as @a[tag=in_aether_temple] run effect give @s levitation 5 0 true
execute if score teleport_timer aether_temple matches 1 as @a[tag=in_aether_temple] run playsound thegreatwork:sfx.ominous_woosh.1 master @s
execute if score teleport_timer aether_temple matches 1 as @a[tag=in_aether_temple] run playsound thegreatwork:sfx.ominous_woosh.2 master @s

execute if score teleport_timer aether_temple matches 1 as @a[tag=in_aether_temple] at @s run playsound thegreatwork:music.eote-eternal_halls master @s

execute if score teleport_timer aether_temple matches 90 as @a[tag=in_aether_temple] at @s run summon lightning_bolt ^ ^0.5 ^0.5
execute if score teleport_timer aether_temple matches 90 as @a[tag=in_aether_temple] at @s positioned ~ ~-61 ~ run summon lightning_bolt ^ ^0.5 ^0.5

execute if score teleport_timer aether_temple matches 95 as @a[tag=in_aether_temple] at @s run tp @s ~ ~-61 ~


execute as @a[tag=in_aether_temple] at @s run particle enchant ~ ~ ~ 1 1 1 0 1
execute as @a[tag=in_aether_temple] at @s run particle enchant ~ ~-61 ~ 1 1 1 0 1


scoreboard players add teleport_timer aether_temple 1
execute if score teleport_timer aether_temple matches ..100 run schedule function fusion1013:fusion/aether_temple/sacrifice/teleport_sequence 1
execute unless score teleport_timer aether_temple matches ..100 run scoreboard players set teleport_timer aether_temple 0