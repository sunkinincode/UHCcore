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
execute if score Allplayers UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"red"},{"text":" Players has joined","color":"red"}]
execute if score Allplayers UHCcore.PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined color red

execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"yellow"},{"text":" Players has joined","color":"yellow"}]
execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined color yellow

execute if score Allplayers UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
execute if score Allplayers UHCcore.PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined color green

bossbar set worldborder.coordinate name [{"text":"Worldborder is ","color":"aqua"},{"score":{"name":"Worldborder","objective":"UHCcore.Worldborder"},"bold":true,"color":"aqua"},{"text":" blocks away from center.","color":"aqua"}]

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

