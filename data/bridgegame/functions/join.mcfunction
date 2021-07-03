execute in bridgegame:game run tp 0 116 0
execute in bridgegame:game positioned 0 116 0 run function hub:main/death/spawnpoint
gamemode adventure
execute if score trash bgprogress matches 1 run gamemode spectator
scoreboard players set noonethere bgprogress 0