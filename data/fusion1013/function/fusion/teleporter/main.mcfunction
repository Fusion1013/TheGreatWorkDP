execute as @e[tag=teleporter,tag=sender] at @s run particle portal ~ ~ ~ 1 .1 1 0 1
execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2] store result score @s teleporter_id as @e[tag=teleporter,distance=..1] run scoreboard players get @s teleporter_id

execute as @a[scores={teleporter_sneak=1..}] at @s if entity @e[tag=teleporter,tag=sender,distance=..2] run function fusion1013:fusion/teleporter/tick


## Teleport player
execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id at @s run particle reverse_portal ~ ~1 ~ 1 1 1 0 100
execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id run particle reverse_portal ~ ~1 ~ 1 1 1 0 100

execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id at @s run playsound entity.enderman.teleport player @s ~ ~ ~
execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id run playsound entity.enderman.teleport player @s ~ ~ ~ 1000

execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id if entity @s[tag=!sender] at @s run playsound block.respawn_anchor.deplete player @s ~ ~ ~
execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id if entity @s[tag=!sender] run playsound block.respawn_anchor.deplete player @s ~ ~ ~ 1000

execute as @e[tag=teleporter,tag=sender] at @s as @a[distance=..2,scores={teleporter=92..}] at @e[tag=teleporter,distance=4..] if score @s teleporter_id = @e[tag=teleporter,distance=..1,limit=1] teleporter_id run tp @s ~ ~ ~


## Reset scores
execute as @a[scores={teleporter=92..}] run scoreboard players set @s teleporter 0
execute as @a[scores={teleporter_sneak=0}] run scoreboard players set @s teleporter 0
scoreboard players set @a teleporter_sneak 0