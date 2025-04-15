# create scoreboard
scoreboard objectives add UHCcore.PlayerAmount dummy
scoreboard objectives add joinUHC trigger
scoreboard objectives add observe trigger
scoreboard objectives add UHCstart trigger
scoreboard objectives add UHCcore.startTriggered dummy
scoreboard objectives add UHCcore.Allowtrigger dummy
scoreboard objectives add UHCcore.Timer dummy
scoreboard objectives add UHCcore.Worldborder dummy
scoreboard objectives add UHCcore.died deathCount
scoreboard objectives add UHCcore.RandomEvents dummy
scoreboard objectives add UHccore.gamemode.tmp dummy
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
scoreboard players set playing UHCstart 0
scoreboard players reset @a UHCstart
scoreboard players set StartCount UHCcore.Timer 0
scoreboard players set @a UHCcore.died 0

# make trigger scoreboard can trigger when not ready
scoreboard players set Allow UHCcore.Allowtrigger 1