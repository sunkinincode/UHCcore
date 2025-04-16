team join died_player @s
tag @s add exclude_me
tag @s add died
tellraw @s [{"text":"\n🛈 Aww You died. Try again next round! ","color":"red"}]

# random text system
execute store result score random.Diedtext UHCcore.died run random value 1..6

execute if score random.Diedtext UHCcore.died matches 1 run tellraw @a[tag=!exclude_me] [{"text":"🗡 i love you guys.","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]
execute if score random.Diedtext UHCcore.died matches 2 run tellraw @a[tag=!exclude_me] [{"text":"🗡 Who's joe","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]
execute if score random.Diedtext UHCcore.died matches 3 run tellraw @a[tag=!exclude_me] [{"text":"🗡 Call me if Half-life 3 has exist","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]
execute if score random.Diedtext UHCcore.died matches 4 run tellraw @a[tag=!exclude_me] [{"text":"🗡 Ouch! That's Hurt!","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]
execute if score random.Diedtext UHCcore.died matches 5 run tellraw @a[tag=!exclude_me] [{"text":"🗡 Guess I Was Good For Something After All..","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]
execute if score random.Diedtext UHCcore.died matches 6 run tellraw @a[tag=!exclude_me] [{"text":"🗡 Can you press F for respect me plz","color":"red","bold": false},{"text":" | Last words by ","color":"gold"},{"selector":"@s","bold":true,"color":"gold"}]


execute as @s at @s run playsound minecraft:entity.villager.death ambient @s ~ ~ ~ 1 1
scoreboard players reset @s UHCcore.died
scoreboard players set random.Diedtext UHCcore.died 0
tag @s remove exclude_me