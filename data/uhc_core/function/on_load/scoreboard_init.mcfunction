# create scoreboard
scoreboard objectives add UHCcore.PlayerAmount dummy
scoreboard objectives add UHCcore.join trigger
scoreboard objectives add UHCcore.observe trigger
scoreboard objectives add Start.UHC trigger
scoreboard objectives add UHCcore.Allowtrigger dummy
scoreboard objectives add UHCcore.Timer dummy
scoreboard objectives add UHCcore.Worldborder dummy
scoreboard objectives add UHCcore.died deathCount
scoreboard objectives add UHCcore.RandomEvents dummy
scoreboard objectives add UHccore.gamemode.tmp dummy
scoreboard objectives add UHCcore.settings trigger
scoreboard objectives add UHCcore.Health dummy [{"text":"❤","color":"red"}]
scoreboard objectives add toggle.bossbar trigger

scoreboard players add Amount UHCcore.RandomEvents 0
scoreboard players add Cooldown.tick(s) UHCcore.RandomEvents 0
scoreboard players add random.Diedtext UHCcore.died 0
scoreboard players add @a UHccore.gamemode.tmp 0
scoreboard players set Players.tmp UHCcore.PlayerAmount 0
scoreboard players add Worldborder UHCcore.Worldborder 0
scoreboard players set divider UHCcore.Worldborder 2 
scoreboard players set Hour(s) UHCcore.Timer 0
scoreboard players set Minute(s) UHCcore.Timer 0
scoreboard players set Second(s) UHCcore.Timer 0
scoreboard players set tick(s) UHCcore.Timer 0
scoreboard players set TimeAmount UHCcore.Timer 1800
scoreboard players set bossbar.switch UHCcore.Timer 0
scoreboard players set bossbar.tick(s) UHCcore.Timer 0
scoreboard players set playing Start.UHC 0
scoreboard players reset @a Start.UHC
scoreboard players set StartCount UHCcore.Timer 0
scoreboard players set @a UHCcore.died 0

