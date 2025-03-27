title @a title [{"text":"Time Out!","color":"red","bold":true}]
execute as @a at @a run playsound entity.ender_dragon.ambient ambient @a ~ ~ ~ 1 1

scoreboard players set StartCount UHCcore.Timer 0
bossbar set minecraft:amount.player.joined visible false
bossbar set minecraft:uhc.timer visible false
bossbar set minecraft:uhc.information visible false
bossbar set worldborder.coordinate visible false

schedule function uhc_core:fight_time/show_title 3s