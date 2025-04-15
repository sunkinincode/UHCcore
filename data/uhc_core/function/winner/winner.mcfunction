scoreboard players set StartCount UHCcore.Timer 0
bossbar set minecraft:amount.player.joined visible false
bossbar set minecraft:worldborder.coordinate visible false
bossbar set minecraft:uhc.timer visible false
bossbar set minecraft:uhc.information visible false

tag @s add winner
team modify players prefix [{"text":""}]
execute as @s run title @a title ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" Has won!","bold":true,"color":"dark_green"}] 
title @a subtitle [{"text":"Game will be End in 10 seconds","color":"green"}]
execute as @a at @a run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1

schedule function uhc_core:load 10s