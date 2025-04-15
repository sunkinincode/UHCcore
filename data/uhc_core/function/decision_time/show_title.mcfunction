execute as @a[team=players] run title @s title [{"text":"Fighting Time!","color":"yellow","bold":true}]
execute as @a at @a run playsound entity.player.levelup ambient @a ~ ~ ~ 1 0.5
