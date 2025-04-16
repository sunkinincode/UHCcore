scoreboard players reset @s Start.UHC

# If Player in world has 1 
execute if score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s[tag=!triggered.start.uhc] run tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"Player in this world has not enough to play UHC!","color":"red","bold":false}]
execute if score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s at @s run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

# If Player has trigger Start.UHC successful (first time)
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=!triggered.start.uhc] run tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"This Amount of players have not fun to play UHC.","color":"gold","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=!triggered.start.uhc] run tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"If You want to play anyway, \n you can /trigger Start.UHC again.","color":"gold","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s at @s run execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=!triggered.start.uhc] run playsound minecraft:entity.villager.ambient ambient @s ~ ~ ~ 1 2
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=!triggered.start.uhc] run tag @s add triggered.start.uhc

# If player has trigger team successful (first time)
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[tag=!triggered.start.uhc] run tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"If you sure to start the UHC. \n You can type /trigger Start.UHC again to start.","color":"green","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s at @s run execute as @s[tag=!triggered.start.uhc] run playsound minecraft:entity.villager.celebrate ambient @s ~ ~ ~ 1 1
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[tag=!triggered.start.uhc] run tag @s add triggered.start.uhc

# If Player has trigger Start.UHC but have player(joinUHC) < 2
execute unless score Players UHCcore.PlayerAmount matches 2.. unless score Allplayers UHCcore.PlayerAmount matches 1 run tellraw @s [{"text":"\n🛈 ","bold":true,"color":"gold"},{"text":"Amount of players who want to play has not enough","color":"gold","bold":false}]
execute unless score Players UHCcore.PlayerAmount matches 2.. unless score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s at @s run execute unless score Players UHCcore.PlayerAmount matches 2..4 run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

