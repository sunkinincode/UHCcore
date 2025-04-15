scoreboard players set Allow UHCcore.Allowtrigger 0
scoreboard players set playing UHCstart 1
bossbar set minecraft:amount.player.joined visible false

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule showDeathMessages false

schedule function uhc_core:gamestart/protect_player_give 1t
schedule function uhc_core:gamestart/countdown/countdown_line1 2s
schedule function uhc_core:gamestart/countdown/countdown_line2 3s
schedule function uhc_core:gamestart/countdown/countdown_line3 4s
schedule function uhc_core:gamestart/countdown/countdown_line4 5s
schedule function uhc_core:gamestart/worldborder 6s
schedule function uhc_core:gamestart/spreadplayers 7s
gamemode survival @a[team=players]
schedule function uhc_core:gamestart/information/line1 10s
schedule function uhc_core:gamestart/information/line2 13s
schedule function uhc_core:gamestart/information/line3 16s
schedule function uhc_core:gamestart/information/line4 19s
schedule function uhc_core:gamestart/information/line5 22s
schedule function uhc_core:gamestart/information/line6 25s
schedule function uhc_core:gamestart/information/bb_invisible 30s
schedule function uhc_core:timer/init 30s
schedule function uhc_core:gamestart/protect_player_clear 30s


