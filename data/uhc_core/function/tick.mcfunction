# enable trigger (before game start)
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a observe
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a joinUHC
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a UHCstart
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players add @a UHCcore.startTriggered 0

# disable trigger (after game start)
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a observe
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a joinUHC
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCstart
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCcore.startTriggered

# sum of player and store result in PlayerAmount scoreboard
execute store result score Allplayers UHCcore.PlayerAmount run execute if entity @a
execute store result score Players UHCcore.PlayerAmount run execute if entity @a[team=players]
execute store result score Observers UHCcore.PlayerAmount run execute if entity @a[team=observer]

# bossbar modifier
execute if score Allplayers UHCcore.PlayerAmount matches 0..1 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Not enough players to play UHC ⚠","color":"red"}]
execute if score Allplayers UHCcore.PlayerAmount matches 0..1 run bossbar set minecraft:amount.player.joined color red

execute if score Players UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Cannot Play UHC for 1 Player ⚠","color":"red"}]
execute if score Players UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined color red

execute if score Players UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"yellow"},{"text":" Players has joined","color":"yellow"}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined color yellow

execute if score Players UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
execute if score Players UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined color green

## bossbar modifier ( Player in world have enough but wait to join)
execute if score Allplayers UHCcore.PlayerAmount matches 2.. run execute if score Players UHCcore.PlayerAmount matches 0 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Waiting Player to Join ⚠","color":"gold"}]
execute if score Allplayers UHCcore.PlayerAmount matches 2.. run execute if score Players UHCcore.PlayerAmount matches 0 run bossbar set minecraft:amount.player.joined color yellow
execute if score Allow UHCcore.Allowtrigger matches 1 run title @a[team=!players,team=!observer] actionbar [{"text":"You can join the UHC by ","color":"green"},{"text":"/trigger joinUHC","color":"gold"},{"text":" or observe by ","color":"green"},{"text":"/trigger observe","color":"gray"}]

## always update data above bossbar
bossbar set worldborder.coordinate name [{"text":"Worldborder is ","color":"aqua"},{"score":{"name":"Worldborder","objective":"UHCcore.Worldborder"},"bold":true,"color":"aqua"},{"text":" blocks away from Pos [0,0]","color":"aqua"}]
bossbar set uhc.timer name [{"text":"Time Left : [ ","color":"green"},{"score":{"name":"Hour(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"Hr : ","color":"green","bold":true},{"score":{"name":"Minute(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"m : ","color":"green","bold":true},{"score":{"name":"Second(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"s","color":"green","bold":true},{"text":" ]","color":"green"}]

# worldborder calculation
execute store result score Worldborder UHCcore.Worldborder run worldborder get
scoreboard players operation Worldborder UHCcore.Worldborder /= divider UHCcore.Worldborder

# trigger event
## event if player trigger UHCstart but have not enough or few amount
execute as @a[scores={UHCstart=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 1 run function uhc_core:check_before_start/player_1
execute as @a[scores={UHCstart=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=0}] run execute if score Allow UHCcore.Allowtrigger matches 1 run function uhc_core:check_before_start/player_2-4
execute as @a[scores={UHCstart=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run execute as @s[scores={UHCcore.startTriggered=1}] run function uhc_core:gamestart/gamestart

## event if have amount player >= 5 and trigger UHCstart
execute as @a[scores={UHCstart=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=0}] run execute if score Allow UHCcore.Allowtrigger matches 1 run function uhc_core:check_before_start/player5
execute as @a[scores={UHCstart=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 5.. run execute as @s[scores={UHCcore.startTriggered=1}] run function uhc_core:gamestart/gamestart

## event if player trigger playUHC or observe first time
execute as @a[scores={joinUHC=1},team=!players] run function uhc_core:trigger_join_team/join_uhc
execute as @a[scores={observe=1},team=!observer] run function uhc_core:trigger_join_team/observe

## event if player trigger playUHC and observe second time
execute as @a[scores={joinUHC=1},team=players] run function uhc_core:trigger_leave_team/join_uhc
execute as @a[scores={observe=1},team=observer] run function uhc_core:trigger_leave_team/observe

# if not playing UHC always show player amount bossbar
execute if score playing UHCstart matches 0 run bossbar set minecraft:amount.player.joined players @a
execute if score playing UHCstart matches 0 run bossbar set minecraft:amount.player.joined visible true

# bossbar switch
execute if score StartCount UHCcore.Timer matches 1 run scoreboard players add bossbar.tick(s) UHCcore.Timer 1
execute if score StartCount UHCcore.Timer matches 1 run execute if score bossbar.tick(s) UHCcore.Timer matches 600.. run function uhc_core:bossbar/switching

# Timer Count down
execute if score StartCount UHCcore.Timer matches 1 run scoreboard players add tick(s) UHCcore.Timer 1
execute store result bossbar minecraft:uhc.timer value run scoreboard players add TimeAmount UHCcore.Timer 0
## if tick equal 20 always remove 1 second
execute if score tick(s) UHCcore.Timer matches 20.. run function uhc_core:timer/decrease_second
## if 10 minutes left will show title
execute if score Minute(s) UHCcore.Timer matches 10 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/10_minutes_left 1s
## if 5 minutes left will show title
execute if score Minute(s) UHCcore.Timer matches 5 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/5_minutes_left 1s
## if 1 minute left will show title
execute if score Minute(s) UHCcore.Timer matches 1 run execute if score Second(s) UHCcore.Timer matches 2 run schedule function uhc_core:timer/1_minutes_left 1s
## if 5 seconds left will count down
execute if score Minute(s) UHCcore.Timer matches 0 run execute if score Second(s) UHCcore.Timer matches 7 run schedule function uhc_core:timer/5_seconds_left/5_seconds_left 1t

# when player died player will turn into observe
execute as @a[scores={UHCcore.died=1}] run function uhc_core:trigger_join_team/observe

# when player has won
execute if score Players UHCcore.PlayerAmount matches 1 run execute if score playing UHCstart matches 1 as @a[scores={UHCcore.winner=0},team=!observer] run function uhc_core:winner/winner

# change gamemode to spectator when game start (For observe role)
execute if score playing UHCstart matches 1 run gamemode spectator @a[team=observer]