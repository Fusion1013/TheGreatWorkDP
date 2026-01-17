scoreboard players set @s item_counter 0

execute store result score hopper1 item_counter run data get block ~ ~ ~ Items[0].count
execute store result score hopper2 item_counter run data get block ~ ~ ~ Items[1].count
execute store result score hopper3 item_counter run data get block ~ ~ ~ Items[2].count
execute store result score hopper4 item_counter run data get block ~ ~ ~ Items[3].count
execute store result score hopper5 item_counter run data get block ~ ~ ~ Items[4].count

scoreboard players operation @s item_counter += hopper1 item_counter
scoreboard players operation @s item_counter += hopper2 item_counter
scoreboard players operation @s item_counter += hopper3 item_counter
scoreboard players operation @s item_counter += hopper4 item_counter
scoreboard players operation @s item_counter += hopper5 item_counter