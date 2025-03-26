scoreboard players reset @s UHCstart

# If player has trigger team successful
execute if score Players PlayerAmount matches 2.. run tellraw @s [{"text":"This Amount of player has not fun to play UHC.","color":"gold"}]
execute if score Players PlayerAmount matches 2.. run tellraw @s [{"text":"If You want to play anyway, you can /trigger UHCstart again.","color":"gold"}]
execute as @s at @s run execute if score Players PlayerAmount matches 2.. run playsound minecraft:entity.villager.ambient ambient @s ~ ~ ~ 1 2

# If player hasn't trigger team successful
execute unless score Players PlayerAmount matches 2.. run tellraw @s [{"text":"Amount of player who want to play has not enough","color":"gold"}]
execute as @s at @s run execute unless score Players PlayerAmount matches 2.. run playsound minecraft:entity.pillager.ambient ambient @s ~ ~ ~ 1 2

