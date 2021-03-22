execute if score bluepoints bgpoints matches 5.. run title @a[x=0] title [{"text": "Blue Wins!","color": "blue"}]
execute if score greenpoints bgpoints matches 5.. run title @a[x=0] title [{"text": "Green Wins!","color": "green"}]
scoreboard players set * bgpoints 0
execute as @a[x=0] positioned 0 116 0 run function hub:main/death/spawnpoint
fill -31 85 -5 30 115 5 barrier hollow
fill -30 85 -4 29 85 4 air
fill -20 100 0 0 100 0 green_terracotta
fill 19 100 0 0 100 0 blue_terracotta
fill -21 100 -2 -25 100 2 emerald_block
fill -22 100 -1 -24 100 1 air
fill -22 104 -1 -24 104 1 emerald_block
fill 20 100 -2 24 100 2 diamond_block
fill 21 100 -1 23 100 1 air
fill 21 104 -1 23 104 1 diamond_block
fill 0 115 0 1 115 0 blue_terracotta
fill -1 115 0 -2 115 0 green_terracotta
fill 2 115 -1 4 115 1 diamond_block
fill -3 115 -1 -5 115 1 emerald_block
fill -1 115 -3 0 115 -4 coal_block
setblock 0 117 0 minecraft:oak_wall_sign[facing=east]{Text3:'{"text":"Start Game","clickEvent":{"action":"run_command","value":"function bridgegame:start"}}'} destroy
setblock -1 117 0 minecraft:oak_wall_sign[facing=west]{Text3:'{"text":"Start Game","clickEvent":{"action":"run_command","value":"function bridgegame:start"}}'} destroy
kill @e[type=item,x=0]
gamemode adventure @a[x=0]
kill @a[x=0,gamemode=adventure]
team leave @a[x=0]
scoreboard players set trash bgprogress 0
clear @a[x=0]
scoreboard players set noonethere bgprogress 1