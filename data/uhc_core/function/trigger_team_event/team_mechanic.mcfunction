## event if player trigger playUHC or observe first time
execute as @a[scores={UHCcore.join=1},team=!players] run function uhc_core:trigger_team_event/trigger_join_team/join_uhc
execute as @a[scores={UHCcore.observe=1},team=!observer] run function uhc_core:trigger_team_event/trigger_join_team/observe

## event if player trigger playUHC and observe second time
execute as @a[scores={UHCcore.join=1},team=players] run function uhc_core:trigger_team_event/trigger_leave_team/join_uhc
execute as @a[scores={UHCcore.observe=1},team=observer] run function uhc_core:trigger_team_event/trigger_leave_team/observe

# when player died player will join died_player team
execute as @a[scores={UHCcore.died=1}] run execute if score playing Start.UHC matches 1 run function uhc_core:trigger_team_event/trigger_join_team/died_player
