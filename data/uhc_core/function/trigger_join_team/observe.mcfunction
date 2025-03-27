execute unless score @s UHCcore.died matches 1.. run scoreboard players reset @s observe

# when player select team Observe
execute unless score @s UHCcore.died matches 1.. run tellraw @s [{"text":"[UHCcore] You have been joined a ","color":"green"},{"text":"Observer ","color":"gray"},{"text":" For a UHC!","color":"green"}]
execute unless score @s UHCcore.died matches 1.. run tellraw @s [{"text":"[UHCcore] You can trigger this again for leave.","color":"green"}]
execute unless score @s UHCcore.died matches 1.. run execute as @s at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2
execute unless score @s UHCcore.died matches 1.. run team join observer @s

# when player died
execute if score @s UHCcore.died matches 1.. run team join observer @s
execute if score @s UHCcore.died matches 1.. run tellraw @s [{"text":"[UHCcore] You died. Try again next round! ","color":"red"}]
execute if score @s UHCcore.died matches 1.. run execute as @s at @s run playsound minecraft:entity.villager.death ambient @s ~ ~ ~ 1 1
execute if score @s UHCcore.died matches 1.. run scoreboard players reset @s UHCcore.died

