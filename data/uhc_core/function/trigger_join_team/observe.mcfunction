scoreboard players reset @s observe

tellraw @s [{"text":"You have been joined a ","color":"green"},{"text":"Observer ","color":"gray"},{"text":" For a UHC!","color":"green"}]
tellraw @s [{"text":"You can trigger this again for leave.","color":"green"}]
execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
team join observer @s
