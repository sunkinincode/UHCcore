scoreboard players reset @s UHCstart

tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"Player in the world has not enough to play UHC!","color":"red"}]
execute as @s at @s run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2