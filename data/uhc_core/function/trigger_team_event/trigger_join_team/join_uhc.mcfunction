scoreboard players reset @s UHCcore.join

tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"You have been joined the UHC! \nYou can trigger this again for leave.","color":"green","bold":false}]
execute as @s at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 2
team join players @s

