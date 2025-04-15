execute unless score @s UHCcore.died matches 1.. run scoreboard players reset @s observe

# when player select team Observe
execute unless score @s UHCcore.died matches 1.. run tellraw @s [{"text":"🛈 ","bold":true,"color":"gold"},{"text":"You have been joined the ","color":"green","bold":false},{"text":"Observer ","color":"red","bold":false},{"text":"For the UHC!","color":"green","bold":false},{"text":"\nObserver ","color":"red","bold":false},{"text":"role won't count as player. Means that you can \nonly observe the UHC. You can trigger again \nfor leave Observer role.","color":"green","bold":false}]
execute unless score @s UHCcore.died matches 1.. run execute as @s at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 2
execute unless score @s UHCcore.died matches 1.. run team join observer @s

