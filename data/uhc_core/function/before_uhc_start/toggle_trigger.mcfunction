# enable trigger (before game start)
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a observe
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a joinUHC
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a UHCstart
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players add @a UHCcore.startTriggered 0

# disable trigger (after game start)
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a observe
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a joinUHC
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCstart
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCcore.startTriggered
