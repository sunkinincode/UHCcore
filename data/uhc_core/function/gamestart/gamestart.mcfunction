scoreboard players set Allow UHCcore.Allowtrigger 0
scoreboard players set playing Start.UHC 1
bossbar set minecraft:amount.player.joined visible false

gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule doImmediateRespawn true

scoreboard objectives setdisplay below_name UHCcore.Health

schedule function uhc_core:gamestart/protect_player_give 1t
schedule function uhc_core:gamestart/countdown/countdown_line1 1s
schedule function uhc_core:gamestart/countdown/countdown_line2 2s
schedule function uhc_core:gamestart/countdown/countdown_line3 3s
schedule function uhc_core:gamestart/countdown/countdown_line4 4s
schedule function uhc_core:gamestart/worldborder 6s
schedule function uhc_core:gamestart/spreadplayers 7s
gamemode survival @a[team=players]
schedule function uhc_core:gamestart/information/line1 10s
schedule function uhc_core:gamestart/information/line2 13s
schedule function uhc_core:gamestart/information/line3 16s
schedule function uhc_core:gamestart/information/line4 20s
schedule function uhc_core:gamestart/information/line5 23s
schedule function uhc_core:gamestart/information/line6 27s
schedule function uhc_core:timer/init 30s
schedule function uhc_core:gamestart/information/bb_invisible 30s
schedule function uhc_core:gamestart/protect_player_clear 30s
schedule function uhc_core:gamestart/protect_game_bug 30s

# subtract 1 point from Player.tmp > To make Players.tmp can compare to use in case when check player has leave or win
scoreboard players remove Players.tmp UHCcore.PlayerAmount 1


