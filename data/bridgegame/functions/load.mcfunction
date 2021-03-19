execute in bridgegame:game run function bridgegame:loadplace
team add bggreen
team add bgblue
team modify bggreen color green
team modify bgblue color blue
scoreboard objectives add limepl minecraft.used:lime_concrete
scoreboard objectives add cyanpl minecraft.used:light_blue_concrete
scoreboard objectives add greenpl minecraft.used:green_concrete
scoreboard objectives add bluepl minecraft.used:blue_concrete
scoreboard objectives add vdvcasttemp dummy
scoreboard objectives add bgpoints dummy
scoreboard objectives add bgprogress dummy
scoreboard players set trash bgprogress 0
team modify bgblue friendlyFire false
team modify bggreen friendlyFire false