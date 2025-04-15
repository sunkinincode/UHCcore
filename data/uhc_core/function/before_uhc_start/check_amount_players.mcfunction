scoreboard players reset @s UHCstart

# If Player in world has 1 
execute if score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"Player in this world has not enough to play UHC!","color":"red","bold":false}]
execute if score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s at @s run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

# If Player has trigger UHCstart successful (first time)
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"This Amount of players have not fun to play UHC.","color":"gold","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"If You want to play anyway, \n you can /trigger UHCstart again.","color":"gold","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s at @s run execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run playsound minecraft:entity.villager.ambient ambient @s ~ ~ ~ 1 2
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run scoreboard players set @s UHCcore.startTriggered 1

# If player has trigger team successful (first time)
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"If you sure to start the UHC. \n You can type /trigger UHCstart again to start.","color":"green","bold":false}]
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s at @s run execute as @s[scores={UHCcore.startTriggered=0}] run playsound minecraft:entity.villager.celebrate ambient @s ~ ~ ~ 1 1
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run scoreboard players set @s UHCcore.startTriggered 1

# If Player has trigger UHCstart but have player(joinUHC) < 2
execute unless score Players UHCcore.PlayerAmount matches 2.. unless score Allplayers UHCcore.PlayerAmount matches 1 run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"Amount of players who want to play has not enough","color":"gold","bold":false}]
execute unless score Players UHCcore.PlayerAmount matches 2.. unless score Allplayers UHCcore.PlayerAmount matches 1 run execute as @s at @s run execute unless score Players UHCcore.PlayerAmount matches 2..4 run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

