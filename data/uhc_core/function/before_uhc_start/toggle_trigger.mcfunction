# enable trigger (before game start)
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a UHCcore.observe
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a UHCcore.join
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a Start.UHC
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players enable @a UHCcore.settings
execute if score Allow UHCcore.Allowtrigger matches 1 run scoreboard players reset @a toggle.bossbar



# disable trigger (after game start)
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCcore.observe
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCcore.join
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a Start.UHC
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players reset @a UHCcore.settings
execute if score Allow UHCcore.Allowtrigger matches 0 run scoreboard players enable @a toggle.bossbar
execute if score Allow UHCcore.Allowtrigger matches 0 run tag @a remove triggered.start.uhc
