# trigger event
## event if player trigger UHCstart but have not enough or few amount
execute as @a[scores={Start.UHC=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 1 run function uhc_core:before_uhc_start/check_amount_players
execute as @a[scores={Start.UHC=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=!triggered.start.uhc] run execute if score Allow UHCcore.Allowtrigger matches 1 run function uhc_core:before_uhc_start/check_amount_players
execute as @a[scores={Start.UHC=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 2..4 run execute as @s[tag=triggered.start.uhc] run function uhc_core:gamestart/gamestart

## event if have amount player >= 5 and trigger Start.UHC
execute as @a[scores={Start.UHC=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 5.. run execute as @s[tag=!triggered.start.uhc] run execute if score Allow UHCcore.Allowtrigger matches 1 run function uhc_core:before_uhc_start/check_amount_players
execute as @a[scores={Start.UHC=1}] run execute if score Allplayers UHCcore.PlayerAmount matches 5.. run execute as @s[tag=triggered.start.uhc] run function uhc_core:gamestart/gamestart