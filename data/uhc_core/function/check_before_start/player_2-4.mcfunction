scoreboard players reset @s UHCstart

# If player has trigger team successful (first time)
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"This Amount of player has not fun to play UHC.","color":"gold"}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run tellraw @s [{"text":"If You want to play anyway, you can /trigger UHCstart again.","color":"gold"}]
execute as @s at @s run execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run playsound minecraft:entity.villager.ambient ambient @s ~ ~ ~ 1 2
execute if score Players UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run scoreboard players set @s UHCcore.startTriggered 1

# If player has trigger team unsuccessful
execute unless score Players UHCcore.PlayerAmount matches 2..4 run tellraw @s [{"text":"Amount of player who want to play has not enough","color":"gold"}]
execute as @s at @s run execute unless score Players UHCcore.PlayerAmount matches 2..4 run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

