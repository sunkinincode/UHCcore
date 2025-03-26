# show tellraw reloaded
tellraw @a ["",{"text":"#------------------------------------------------------#","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"       UHC Core Made By dEWGAMIING01","bold":true,"color":"dark_green"},{"text":"        #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"       You can join UHC by /trigger joinUHC","color":"green"},{"text":"          #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"   You can Observe a UHC by /trigger observe","color":"green"},{"text":"     #","color":"gold"},{"text":"\n"},{"text":"#","color":"gold"},{"text":"             Start UHC by /trigger UHCstart","color":"yellow"},{"text":"               #","color":"gold"},{"text":"\n"},{"text":"#------------------------------------------------------#","color":"gold"}]

# create scoreboard
scoreboard objectives add PlayerAmount dummy
scoreboard objectives add joinUHC trigger
scoreboard objectives add observe trigger
scoreboard objectives add UHCstart trigger
scoreboard objectives add Allowtrigger dummy
scoreboard objectives add Timer dummy
scoreboard players add Hour(s) Timer 0
scoreboard players add Minute(s) Timer 0
scoreboard players add Seconds(s) Timer 0

# make trigger scoreboard can trigger when not ready
scoreboard players set Allow Allowtrigger 1

# bossbar show amount player has join
bossbar add amount.player.joined [{"score":{"name":"Allplayers","objective":"PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
bossbar set minecraft:amount.player.joined color green
bossbar set minecraft:amount.player.joined players @a
bossbar set minecraft:amount.player.joined value 10
bossbar set minecraft:amount.player.joined max 10
bossbar set minecraft:amount.player.joined style notched_6

# create team
team add players [{"text":"Player","color":"gold"}]
team modify players prefix [{"text":"[UHC] ","color":"gold"}]

team add observer [{"text":"Observer","color":"gray"}]
team modify observer prefix [{"text":"[UHC] ","color":"gray"}]

# debug
team leave @a
scoreboard players reset @a observe
scoreboard players reset @a joinUHC