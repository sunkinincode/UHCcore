# bossbar show amount player has join
bossbar add amount.player.joined [{"score":{"name":"Allplayers","objective":"UHCcore.PlayerAmount"},"color":"green"},{"text":" Players has joined","color":"green"}]
bossbar set amount.player.joined color green
bossbar set amount.player.joined value 10
bossbar set amount.player.joined max 10
bossbar set amount.player.joined style notched_6

# bossbar show worldborder coordinate
bossbar add worldborder.coordinate [{"text":"Worldborder is ","color":"aqua"},{"score":{"name":"Worldborder","objective":"UHCcore.Worldborder"},"bold":true,"color":"aqua"},{"text":" blocks away from center.","color":"aqua"}]
bossbar set worldborder.coordinate color blue 
bossbar set worldborder.coordinate value 10
bossbar set worldborder.coordinate max 10
bossbar set worldborder.coordinate style notched_10

# bossbar show Timer
bossbar add uhc.timer [{"text":"Time Left : ","color":"green"},{"score":{"name":"Hour(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":" : ","color":"green","bold":true},{"score":{"name":"Minute(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"},{"text":" : ","color":"green","bold":true},{"score":{"name":"Second(s)","objective":"UHCcore.Timer"},"bold":true,"color":"green"}]
bossbar set minecraft:uhc.timer color green
bossbar set minecraft:uhc.timer style progress

# bossbar show information (first 30 seconds when UHC start)
bossbar add uhc.information [{"text":""}]

