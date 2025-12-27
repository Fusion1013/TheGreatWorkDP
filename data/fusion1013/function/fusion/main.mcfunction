##
 # main.mcfunction
 # fusion
 #
 # Created by Fusion1013.
##

function fusion1013:fusion/aether_temple/main
function fusion1013:fusion/material_pit/main
function fusion1013:fusion/primordial_forge/main
function fusion1013:fusion/desert_temple/main
function fusion1013:fusion/jungle_temple/main
function fusion1013:fusion/floating_sword/main
function fusion1013:fusion/spawner/main
function fusion1013:fusion/teleporter/main
function fusion1013:fusion/healing_totem/main
function fusion1013:fusion/forge/main
function fusion1013:fusion/common/main
function fusion1013:fusion/elevator/main

execute as @e[scores={debug=1..}] run scoreboard players remove @s debug 1
execute as @e[scores={debug=10..}] at @s unless entity @e[tag=debug_display,distance=..1] run summon block_display ~ ~ ~ {Glowing:1b,Tags:["debug_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[.5f,.5f,.5f]},block_state:{Name:"minecraft:command_block"}}
execute as @e[scores={debug=1}] at @s run kill @e[tag=debug_display,distance=..1]