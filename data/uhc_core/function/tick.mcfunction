# enable trigger (before game start)
execute if score Allow Allowtrigger matches 1 run scoreboard players enable @a observe
execute if score Allow Allowtrigger matches 1 run scoreboard players enable @a joinUHC
execute if score Allow Allowtrigger matches 1 run scoreboard players enable @a UHCstart

# sum of player and store result in PlayerAmount scoreboard
execute store result score Allplayers PlayerAmount run execute if entity @a
execute store result score Players PlayerAmount run execute if entity @a[team=players]
execute store result score Observers PlayerAmount run execute if entity @a[team=observer]

# always show bossbar (before game start)
bossbar set minecraft:amount.player.joined players @a

# bossbar modifier
execute if score Allplayers PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"PlayerAmount"},"color":"red"},{"text":" Players has joined","color":"red"}]
execute if score Allplayers PlayerAmount matches 1 run bossbar set minecraft:amount.player.joined color red

execute if score Allplayers PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"PlayerAmount"},"color":"yellow"},{"text":" Players has joined","color":"yellow"}]
execute if score Allplayers PlayerAmount matches 2..4 run bossbar set minecraft:amount.player.joined color yellow

execute if score Allplayers PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined name [{"score":{"name":"Allplayers","objective":"PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
execute if score Allplayers PlayerAmount matches 5.. run bossbar set minecraft:amount.player.joined color green


# trigger event
## event if player trigger UHCstart but have not enough or few amount
execute as @a[scores={UHCstart=1}] run execute if score Allplayers PlayerAmount matches 1 run function uhc_core:check_before_start/player_1
execute as @a[scores={UHCstart=1}] run execute if score Allplayers PlayerAmount matches 2..4 run function uhc_core:check_before_start/player_2-4

## event if player trigger playUHC or observe first time
execute as @a[scores={joinUHC=1},team=!players] run function uhc_core:trigger_join_team/join_uhc
execute as @a[scores={observe=1},team=!observer] run function uhc_core:trigger_join_team/observe

## event if player trigger playUHC and observe second time
execute as @a[scores={joinUHC=1},team=players] run function uhc_core:trigger_leave_team/join_uhc
execute as @a[scores={observe=1},team=observer] run function uhc_core:trigger_leave_team/observe
