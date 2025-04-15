bossbar set minecraft:uhc.information color yellow 
bossbar set minecraft:uhc.information max 14
bossbar set minecraft:uhc.information value 2
bossbar set minecraft:uhc.information name [{"text":"Welcome to the UHC","color":"yellow"}]
execute as @a at @a run playsound ui.button.click ambient @s ~ ~ ~ 1 1.2
bossbar set minecraft:uhc.information visible true
bossbar set minecraft:uhc.information players @a

title @a actionbar [{"text":"You will not take damage for 30 seconds","color":"green","bold":true}]


