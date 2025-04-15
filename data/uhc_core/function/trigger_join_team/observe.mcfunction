execute unless score @s UHCcore.died matches 1.. run scoreboard players reset @s observe

# when player select team Observe
execute unless score @s UHCcore.died matches 1.. run tellraw @s [{"text":"[UHCcore] You have been joined the ","color":"green"},{"text":"Observer ","color":"gray"},{"text":"For the UHC!","color":"green"}]
execute unless score @s UHCcore.died matches 1.. run tellraw @s [{"text":"[UHCcore] You can trigger this again for leave.","color":"green"}]
execute unless score @s UHCcore.died matches 1.. run execute as @s at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
execute unless score @s UHCcore.died matches 1.. run team join observer @s

# when player died
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run team join observer @s
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run tellraw @a [{"selector":"@s","bold":true,"color":"red"},{"text":" > GG guy, I died","color":"red"}]
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run tellraw @s [{"text":"[UHCcore] You died. Try again next round! ","color":"red"}]
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run execute as @s at @s run playsound block.note_block.banjo ambient @s ~ ~ ~ 1 0.3
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run scoreboard players reset @s UHCcore.died

