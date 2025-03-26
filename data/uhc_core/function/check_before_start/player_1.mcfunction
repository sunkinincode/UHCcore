scoreboard players reset @s UHCstart

tellraw @s [{"text":"Player in the world has not enough to play UHC!","color":"gold"}]
execute as @s at @s run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2