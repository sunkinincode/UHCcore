scoreboard players reset @s observe

tellraw @s [{"text":"You can't observe this UHC anymore!","color":"red"}]
execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
team leave @s