# sum of player and store result in PlayerAmount scoreboard
execute store result score Allplayers UHCcore.PlayerAmount run execute if entity @a
execute store result score Players UHCcore.PlayerAmount run execute if entity @a[team=players]
execute store result score Observers UHCcore.PlayerAmount run execute if entity @a[team=observer]
execute store result score DiedPlayers UHCcore.PlayerAmount run execute if entity @a[team=died_player]

# worldborder calculation
execute store result score Worldborder UHCcore.Worldborder run worldborder get
scoreboard players operation Worldborder UHCcore.Worldborder /= divider UHCcore.Worldborder

# store health data
execute as @a run execute store result score @s UHCcore.Health run data get entity @s Health