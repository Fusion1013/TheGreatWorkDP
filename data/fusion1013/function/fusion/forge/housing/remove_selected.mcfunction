execute as @e[tag=forge_cursor] at @s positioned ~ ~1 ~ run kill @e[type=item_display,distance=..1,limit=1]
execute as @e[tag=forge_cursor] at @s positioned ~ ~2 ~ run kill @e[type=item,distance=..0.5,limit=1]
execute as @e[tag=forge_cursor] at @s run setblock ~ ~1 ~ air
function fusion1013:fusion/forge/housing/set_effects
execute as @e[tag=forge_cursor] at @s run playsound block.vault.break block @a ~ ~1 ~