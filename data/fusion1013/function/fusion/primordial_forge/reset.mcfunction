##
 # reset.mcfunction
 # 
 #
 # Created by Fusion1013.
##

scoreboard objectives add primordial_forge dummy
scoreboard objectives add pf_pedestals dummy

execute as @e[tag=p_forge_center] at @s run kill @e[tag=first_matter_center,distance=..3]
scoreboard players set brazier_count primordial_forge 0