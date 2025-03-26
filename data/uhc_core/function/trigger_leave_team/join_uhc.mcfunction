scoreboard players reset @s joinUHC

tellraw @s [{"text":"You have been leaved a UHC!","color":"red"}]
execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
team leave @s
