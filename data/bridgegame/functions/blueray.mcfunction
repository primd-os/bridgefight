execute positioned ~ ~ ~ if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~0.1 ~0.1 ~0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~0.1 ~0.1 ~-0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~0.1 ~-0.1 ~0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~0.1 ~-0.1 ~-0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~-0.1 ~0.1 ~0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~-0.1 ~0.1 ~-0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~-0.1 ~-0.1 ~0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
execute positioned ~-0.1 ~-0.1 ~-0.1 if block ~ ~ ~ light_blue_concrete run function bridgegame:hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..100 positioned ^ ^ ^0.1 run function bridgegame:blueray