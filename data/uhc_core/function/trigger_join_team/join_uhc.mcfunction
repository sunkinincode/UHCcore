scoreboard players reset @s joinUHC

tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"You have been joined the UHC!","color":"green"}]
tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"You can trigger this again for leave.","color":"green"}]
execute as @s at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 2
team join players @s

