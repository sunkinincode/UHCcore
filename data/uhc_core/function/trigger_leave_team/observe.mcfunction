scoreboard players reset @s observe

tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"You can't observe this UHC anymore!","color":"red"}]
execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
gamemode survival @s
team leave @s