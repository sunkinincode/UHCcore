# Timer Count down
execute if score StartCount UHCcore.Timer matches 1 run scoreboard players add tick(s) UHCcore.Timer 1
execute store result bossbar minecraft:uhc.timer value run scoreboard players get TimeAmount UHCcore.Timer
## if tick equal 20 always remove 1 second
execute if score tick(s) UHCcore.Timer matches 20.. run function uhc_core:timer/decrease_second
## if 10 minutes left will show title
execute if score Minute(s) UHCcore.Timer matches 10 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/10_minutes_left 1s
## if 5 minutes left will show title
execute if score Minute(s) UHCcore.Timer matches 5 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/5_minutes_left 1s
## if 1 minute left will show title
execute if score Minute(s) UHCcore.Timer matches 1 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/1_minutes_left 1s
## if 5 seconds left will count down
execute if score Minute(s) UHCcore.Timer matches 0 run execute if score Second(s) UHCcore.Timer matches 7 run schedule function uhc_core:timer/5_seconds_left/5_seconds_init 1t