fill -29 84 -4 29 114 4 green_concrete replace lime_concrete
fill -29 84 -4 29 114 4 blue_concrete replace light_blue_concrete
execute as @a[x=0,gamemode=adventure,team=bggreen] positioned -23 105 0 facing 0 ~ 0 run function hub:main/death/spawnpoint
execute as @a[x=0,gamemode=adventure,team=bgblue] positioned 22 105 0 facing 0 ~ 0 run function hub:main/death/spawnpoint
kill @a[x=0,gamemode=adventure]
clear @a[x=0,gamemode=adventure]
give @a[x=0,gamemode=adventure] iron_sword{CanDestroy:["light_blue_concrete","blue_concrete","green_concrete","lime_concrete"],Unbreakable:1b}
give @a[x=0,gamemode=adventure,team=bggreen] lime_concrete{CanPlaceOn:["green_terracotta","blue_terracotta","green_concrete","light_blue_concrete","blue_concrete","black_concrete","lime_concrete"]}
give @a[x=0,gamemode=adventure,team=bgblue] light_blue_concrete{CanPlaceOn:["green_terracotta","blue_terracotta","green_concrete","light_blue_concrete","blue_concrete","black_concrete","lime_concrete"]}
give @a[x=0,gamemode=adventure] bow{Unbreakable:1b}
give @a[x=0,gamemode=adventure] golden_apple 8
give @a[x=0,gamemode=adventure] arrow 16
item replace entity @a[gamemode=adventure,team=bgblue] armor.feet with leather_boots{Unbreakable:1b,display:{color:3949738}}
item replace entity @a[gamemode=adventure,team=bgblue] armor.legs with leather_leggings{Unbreakable:1b,display:{color:3949738}}
item replace entity @a[gamemode=adventure,team=bgblue] armor.chest with leather_chestplate{Unbreakable:1b,display:{color:3949738}}
item replace entity @a[gamemode=adventure,team=bgblue] armor.head with leather_helmet{Unbreakable:1b,display:{color:3949738}}
item replace entity @a[gamemode=adventure,team=bggreen] armor.feet with leather_boots{Unbreakable:1b,display:{color:6192150}}
item replace entity @a[gamemode=adventure,team=bggreen] armor.legs with leather_leggings{Unbreakable:1b,display:{color:6192150}}
item replace entity @a[gamemode=adventure,team=bggreen] armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6192150}}
item replace entity @a[gamemode=adventure,team=bggreen] armor.head with leather_helmet{Unbreakable:1b,display:{color:6192150}}
effect give @a[x=0,gamemode=adventure] haste 999999 1 true
scoreboard players set @a cyanpl 0
scoreboard players set @a bluepl 0
scoreboard players set @a limepl 0
scoreboard players set @a greenpl 0
execute if score bluepoints bgpoints matches 5.. run function bridgegame:endgame
execute if score greenpoints bgpoints matches 5.. run function bridgegame:endgame
kill @e[type=item,x=0]
kill @e[type=arrow,x=0]