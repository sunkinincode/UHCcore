scoreboard players reset @s observe

tellraw @s [{"text":"🛈 ","bold":true,"color":"gold"},{"text":"You can't observe this UHC anymore!","color":"red"}]
execute as @s at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0.5
team leave @s