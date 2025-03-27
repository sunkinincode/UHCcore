# show tellraw reloaded
tellraw @a ["",{"text":"#---------------------------------------------------#","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"       UHC Core Made By dEWGAMIING01","bold":true,"color":"dark_green"},{"text":"        #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"       You can join UHC by /trigger joinUHC","color":"green"},{"text":"          #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"   You can Observe a UHC by /trigger observe","color":"green"},{"text":"     #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"             Start UHC by /trigger UHCstart","color":"yellow"},{"text":"               #","color":"gold"},{"text":"\n"},{"text":"#---------------------------------------------------#","color":"gold"}]

# create scoreboard
scoreboard objectives add UHCcore.PlayerAmount dummy
scoreboard objectives add joinUHC trigger
scoreboard objectives add observe trigger
scoreboard objectives add UHCstart trigger
scoreboard objectives add UHCcore.startTriggered dummy
scoreboard objectives add UHCcore.Allowtrigger dummy
scoreboard objectives add UHCcore.Timer dummy
scoreboard objectives add UHCcore.Worldborder dummy
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

# make trigger scoreboard can trigger when not ready
scoreboard players set Allow UHCcore.Allowtrigger 1

# bossbar show amount player has join
bossbar add amount.player.joined [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
bossbar set amount.player.joined color green
bossbar set amount.player.joined value 10
bossbar set amount.player.joined max 10
bossbar set amount.player.joined style notched_6

# bossbar show worldborder coordinate
bossbar add worldborder.coordinate [{"text":"Worldborder is ","color":"aqua"},{"score":{"name":"Worldborder","objective":"UHCcore.Worldborder"},"bold":true,"color":"aqua"},{"text":" blocks away from center.","color":"aqua"}]
bossbar set worldborder.coordinate color blue 
bossbar set worldborder.coordinate value 10
bossbar set worldborder.coordinate max 10
bossbar set worldborder.coordinate style notched_10

# bossbar show Timer
bossbar add uhc.timer [{"text":"Time Left : ","color":"green"},{"score":{"name":"Hour(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":" : ","color":"green","bold":true},{"score":{"name":"Minute(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":" : ","color":"green","bold":true},{"score":{"name":"Second(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"}]
bossbar set minecraft:uhc.timer color green
bossbar set minecraft:uhc.timer style progress

# create team
team add players [{"text":"Player","color":"gold"}]
team modify players prefix [{"text":"[UHC] ","color":"gold"}]

team add observer [{"text":"Observer","color":"gray"}]
team modify observer prefix [{"text":"[UHC] ","color":"gray"}]

# bossbar invisible
bossbar set minecraft:amount.player.joined visible false
bossbar set minecraft:worldborder.coordinate visible false


# show title and sound
title @a title [{"text":"UHC has been reset!","color":"red"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient ambient @a ~ ~ ~ 1 2


# debug
team leave @a
scoreboard players reset @a observe
scoreboard players reset @a joinUHC
