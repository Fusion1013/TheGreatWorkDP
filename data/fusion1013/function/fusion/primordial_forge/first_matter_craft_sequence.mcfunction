##
 # first_matter_craft_sequence.mcfunction
 # 
 #
 # Created by .
##

scoreboard players add first_matter_craft primordial_forge 1


execute at @e[tag=material_pit,tag=p_forge] run particle end_rod ~ ~5 ~ .1 .1 .1 .2 3 force


execute if score first_matter_craft primordial_forge matches 12 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 24 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 36 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 48 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 60 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 72 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 84 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 96 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 108 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 120 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 132 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 144 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 156 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 168 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 180 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 192 run function fusion1013:fusion/primordial_forge/increase_brazier_count
execute if score first_matter_craft primordial_forge matches 204 run function fusion1013:fusion/primordial_forge/increase_brazier_count


execute as @e[tag=material_pit_display,tag=p_forge] if score first_matter_craft primordial_forge matches 216 run kill @s

execute if score first_matter_craft primordial_forge matches 214 at @e[tag=p_forge_center] run summon lightning_bolt
execute if score first_matter_craft primordial_forge matches 214 at @e[tag=p_forge_center] run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 1
execute if score first_matter_craft primordial_forge matches 214 at @e[tag=p_forge_center] run particle end_rod ~ ~ ~ 0 0 0 1 100
execute if score first_matter_craft primordial_forge matches 216 at @e[tag=p_forge_center] run summon marker ~ ~ ~ {Tags:["first_matter_center"]}
execute if score first_matter_craft primordial_forge matches 216 at @e[tag=p_forge_center] run function fusion1013:fusion/primordial_forge/first_matter/summon_first_matter
execute if score first_matter_craft primordial_forge matches 214 at @e[tag=p_forge_center] run scoreboard players set brazier_count primordial_forge 0
execute if score first_matter_craft primordial_forge matches 214 at @e[tag=p_forge_center] at @e[tag=pr_forge_brazier] run setblock ~ ~ ~ air

execute if score first_matter_craft primordial_forge matches ..216 run schedule function fusion1013:fusion/primordial_forge/first_matter_craft_sequence 1
execute if score first_matter_craft primordial_forge matches 217.. run scoreboard players set first_matter_craft primordial_forge 0