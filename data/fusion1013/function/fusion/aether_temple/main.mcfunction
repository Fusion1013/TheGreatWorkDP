##
 # main.mcfunction
 # 
 #
 # Created by Fusion1013.
##


function fusion1013:fusion/aether_temple/sword/update_scoreboard
function fusion1013:fusion/aether_temple/sword/sword_ambient_visuals
function fusion1013:fusion/aether_temple/sword/update_redstone_blocks
function fusion1013:fusion/aether_temple/spawner/main

execute as @e[tag=aether_temple_center] if score sword_blue aether_temple matches 1 if score sword_green aether_temple matches 1 if score sword_red aether_temple matches 1 at @s run function fusion1013:fusion/aether_temple/sacrifice/test_teleport_sequence_conditions
tag @a remove in_aether_temple
execute as @e[tag=aether_temple_center] at @s run tag @a[distance=..20] add in_aether_temple
