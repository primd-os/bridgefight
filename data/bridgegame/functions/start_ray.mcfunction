tag @s add vdvray
scoreboard players set #hit vdvcasttemp 0
scoreboard players set #distance vdvcasttemp 0
execute as @s[team=bggreen] run function bridgegame:greenray
execute as @s[team=bgblue] run function bridgegame:blueray
tag @s remove vdvray