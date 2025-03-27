execute if score TimeAmount UHCcore.Timer matches 1800 run spreadplayers 0 0 500 700 false @a
execute if score TimeAmount UHCcore.Timer matches 3600 run spreadplayers 0 0 600 800 false @a
execute if score TimeAmount UHCcore.Timer matches 10800 run spreadplayers 0 0 1000 1500 false @a
execute if score TimeAmount UHCcore.Timer matches 86400 run spreadplayers 0 0 2000 5000 false @a

function uhc_core:timer/init
scoreboard players set StartCount UHCcore.Timer 1