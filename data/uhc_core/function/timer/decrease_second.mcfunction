scoreboard players set tick(s) UHCcore.Timer 0
scoreboard players remove Second(s) UHCcore.Timer 1
scoreboard players remove TimeAmount UHCcore.Timer 1
execute store result bossbar minecraft:uhc.timer value run scoreboard players get TimeAmount UHCcore.Timer

# if seconds is -1 will decrease 1 minute 
execute if score Second(s) UHCcore.Timer matches ..-1 run scoreboard players remove Minute(s) UHCcore.Timer 1
execute if score Second(s) UHCcore.Timer matches ..-1 run scoreboard players set Second(s) UHCcore.Timer 59
# if minutes is -1 will decrease 1 hour
execute if score Minute(s) UHCcore.Timer matches ..-1 run scoreboard players remove Hour(s) UHCcore.Timer 1
execute if score Minute(s) UHCcore.Timer matches ..-1 run scoreboard players set Minute(s) UHCcore.Timer 59
