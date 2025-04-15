scoreboard players reset @s joinUHC

tellraw @s [{"text":"🛈 ","bold":true,"color":"gold"},{"text":"You don't want to play UHC anymore :<","color":"red"}]
execute as @s at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0.5
team leave @s
