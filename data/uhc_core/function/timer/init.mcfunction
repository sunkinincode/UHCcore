# if setting Timer to 30 minutes
execute if score TimeAmount UHCcore.Timer matches 1800 run scoreboard players set Minute(s) UHCcore.Timer 30

# if setting Timer to 1 hour
execute if score TimeAmount UHCcore.Timer matches 3600 run scoreboard players set Hour(s) UHCcore.Timer 1

# if setting Timer to 3 hours
execute if score TimeAmount UHCcore.Timer matches 10800 run scoreboard players set Hour(s) UHCcore.Timer 3

# if setting Timer to 24 hours
execute if score TimeAmount UHCcore.Timer matches 86400 run scoreboard players set Hour(s) UHCcore.Timer 24


# Timer Bossbar initialize
execute store result bossbar minecraft:uhc.timer max run scoreboard players get TimeAmount UHCcore.Timer
scoreboard players set StartCount UHCcore.Timer 1