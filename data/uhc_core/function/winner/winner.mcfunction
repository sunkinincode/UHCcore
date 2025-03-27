scoreboard players set @s UHCcore.winner 1
scoreboard players set StartCount UHCcore.Timer 0
bossbar set minecraft:amount.player.joined visible false
bossbar set minecraft:worldborder.coordinate visible false
bossbar set minecraft:uhc.timer visible false
bossbar set minecraft:uhc.information visible false

team modify players prefix [{"text":""}]
execute as @s run title @a title ["",{"selector":"@s","bold":true,"color":"dark_green"},{"text":" Has won!","bold":true,"color":"dark_green"}] 
execute as @a at @a run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1

title @a actionbar [{"text":"Game will be reset in 10 seconds"}]
schedule function uhc_core:load 10s