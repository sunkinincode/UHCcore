execute if score @s UHCcore.died matches 1.. run team join died_player @s
tag @s add exclude_me
tag @s add died
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run tellraw @s [{"text":"🛈 Aww You died. Try again next round! ","color":"red"}]
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run tellraw @a[tag=!exclude_me] ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" (Has Died) > sorry im lag bro","color":"red","bold": false}]
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run execute as @s at @s run playsound minecraft:entity.villager.death ambient @s ~ ~ ~ 1 1
execute if score @s UHCcore.died matches 1.. run execute if score playing UHCstart matches 1 run scoreboard players reset @s UHCcore.died
tag @s remove exclude_me