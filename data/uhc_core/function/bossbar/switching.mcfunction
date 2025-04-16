scoreboard players set bossbar.tick(s) UHCcore.Timer 0
scoreboard players add bossbar.switch UHCcore.Timer 1

execute if score bossbar.switch UHCcore.Timer matches 3.. run scoreboard players set bossbar.switch UHCcore.Timer 0

