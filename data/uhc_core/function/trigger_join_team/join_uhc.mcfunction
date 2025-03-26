scoreboard players reset @s joinUHC

tellraw @s [{"text":"You have been joined a UHC!","color":"green"}]
tellraw @s [{"text":"You can trigger this again for leave.","color":"green"}]
execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
team join players @s

