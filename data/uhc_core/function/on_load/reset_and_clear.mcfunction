# worldborder reset
worldborder center 0 0
worldborder set 2000


# show title and sound
title @a title [{"text":"UHC has been reset!","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 0.3


# clear team and scoreboard
tag @a[tag=died] remove died
tag @a[tag=winner] remove winner
tag @a remove dontShowBossbar4Me
team leave @a
effect give @a regeneration 5 255 true

# gamerule
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule showDeathMessages true
gamerule doImmediateRespawn false


# reset title times
title @a times 10 60 20

# return to gamemode before UHC start
gamemode survival @a[scores={UHccore.gamemode.tmp=0}]
gamemode creative @a[scores={UHccore.gamemode.tmp=1}] 
gamemode adventure @a[scores={UHccore.gamemode.tmp=2}] 
gamemode spectator @a[scores={UHccore.gamemode.tmp=3}] 

# bossbar visibility
bossbar set minecraft:uhc.timer visible false
bossbar set minecraft:worldborder.coordinate visible false
bossbar set minecraft:uhc.information visible false

# make trigger scoreboard can trigger when not ready
scoreboard players set Allow UHCcore.Allowtrigger 1

scoreboard objectives setdisplay below_name