scoreboard players reset @s UHCstart

# If player has trigger team successful (first time)
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"If you sure to start a UHC.You can tyoe /trigger UHCstart again to start.","color":"green"}]
execute as @s at @s run execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run playsound minecraft:entity.villager.celebrate ambient @s ~ ~ ~ 1 1
execute if score Players UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run scoreboard players set @s UHCcore.startTriggered 1

# If player has trigger team unsuccessful
execute unless score Players UHCcore.PlayerAmount matches 5.. run tellraw @s [{"text":"[UHCcore] ","bold":true,"color":"gold"},{"text":"Amount of player who want to play has not enough","color":"gold"}]
execute as @s at @s run execute unless score Players UHCcore.PlayerAmount matches 5.. run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

