# change gamemode to spectator when game start (For observe role and died player)
execute if score playing UHCstart matches 1 run gamemode spectator @a[team=observer]
execute if score playing UHCstart matches 1 run gamemode spectator @a[team=died_player]