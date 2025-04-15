# bossbar modifier
execute if score Allplayers UHCcore.PlayerAmount matches 0..1 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Not enough players to play UHC ⚠","color":"red"}]
execute if score Allplayers UHCcore.PlayerAmount matches 0..1 run bossbar set minecraft:amount.player.joined color red

execute if score Players UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Cannot Play UHC for 1 Player ⚠","color":"red"}]
execute if score Players UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined color red

execute if score Players UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Players","objective":"UHCcore.PlayerAmount"},"color":"yellow"},{"text":" Players has joined","color":"yellow"}]
execute if score Players UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined color yellow

execute if score Players UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Players","objective":"UHCcore.PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
execute if score Players UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined color green

## game not start
## bossbar modifier ( Player in world have enough but wait to join)
execute if score Allplayers UHCcore.PlayerAmount matches 2.. run execute if score Players UHCcore.PlayerAmount matches 0 run bossbar set minecraft:amount.player.joined name [{"text":"⚠ Waiting Player to Join ⚠","color":"gold"}]
execute if score Allplayers UHCcore.PlayerAmount matches 2.. run execute if score Players UHCcore.PlayerAmount matches 0 run bossbar set minecraft:amount.player.joined color yellow
execute if score Allow UHCcore.Allowtrigger matches 1 run title @a[team=!players,team=!observer] actionbar [{"text":"▶ You can join the UHC by ","color":"green"},{"text":"/trigger joinUHC","color":"gold"},{"text":" or observe by ","color":"green"},{"text":"/trigger observe","color":"red"},{"text":" ◀","color":"green"}]

## always update data above bossbar
bossbar set worldborder.coordinate name [{"text":"Worldborder is ","color":"aqua"},{"score":{"name":"Worldborder","objective":"UHCcore.Worldborder"},"bold":true,"color":"aqua"},{"text":" blocks away from Pos [0,0]","color":"aqua"}]
bossbar set uhc.timer name [{"text":"Time Left : [ ","color":"green"},{"score":{"name":"Hour(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"Hr : ","color":"green","bold":true},{"score":{"name":"Minute(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"m : ","color":"green","bold":true},{"score":{"name":"Second(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":"s","color":"green","bold":true},{"text":" ]","color":"green"}]

## game start
# bossbar switch
execute if score StartCount UHCcore.Timer matches 1 run scoreboard players add bossbar.tick(s) UHCcore.Timer 1
execute if score StartCount UHCcore.Timer matches 1 run execute if score bossbar.tick(s) UHCcore.Timer matches 600.. run function uhc_core:bossbar/switching

# show bossbar
execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 1 run bossbar set minecraft:worldborder.coordinate visible true
execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 1 run bossbar set minecraft:worldborder.coordinate players @a
execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 1 run bossbar set minecraft:uhc.timer visible false

execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 2 run bossbar set minecraft:uhc.timer visible true
execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 2 run bossbar set minecraft:uhc.timer players @a
execute if score StartCount UHCcore.Timer matches 1 if score playing UHCstart matches 1 if score bossbar.switch UHCcore.Timer matches 2 run bossbar set minecraft:worldborder.coordinate visible false


# if not playing UHC always show player amount bossbar
execute if score playing UHCstart matches 0 run bossbar set minecraft:amount.player.joined players @a
execute if score playing UHCstart matches 0 run bossbar set minecraft:amount.player.joined visible true