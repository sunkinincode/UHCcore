# when game start
execute if score StartCount UHCcore.Timer matches 1 run scoreboard players add Cooldown.tick(s) UHCcore.RandomEvents 1

# every 10 minutes run function random events