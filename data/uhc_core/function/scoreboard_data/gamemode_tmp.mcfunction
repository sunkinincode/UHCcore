# store gamemode before UHC start (use when UHC has end to set player to gamemode before UHC start)
execute as @a[gamemode=survival] if score playing Start.UHC matches 0 run scoreboard players set @s UHccore.gamemode.tmp 0
execute as @a[gamemode=creative] if score playing Start.UHC matches 0 run scoreboard players set @s UHccore.gamemode.tmp 1
execute as @a[gamemode=adventure] if score playing Start.UHC matches 0 run scoreboard players set @s UHccore.gamemode.tmp 2
execute as @a[gamemode=spectator] if score playing Start.UHC matches 0 run scoreboard players set @s UHccore.gamemode.tmp 3
