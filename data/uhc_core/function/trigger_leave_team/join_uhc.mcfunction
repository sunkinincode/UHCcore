scoreboard players reset @s joinUHC

tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"You have been leaved a UHC!","color":"red"}]
execute as @s at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0.5
gamemode survival @s
team leave @s
