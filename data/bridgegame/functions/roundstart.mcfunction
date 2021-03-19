fill -29 84 -4 29 114 4 green_concrete replace lime_concrete
fill -29 84 -4 29 114 4 blue_concrete replace light_blue_concrete
spawnpoint @a[x=0,gamemode=adventure,team=bggreen] -23 105 0 -90
spawnpoint @a[x=0,gamemode=adventure,team=bgblue] 22 105 0 90
kill @a[x=0,gamemode=adventure]
clear @a[x=0,gamemode=adventure]
give @a[x=0,gamemode=adventure] iron_sword{CanDestroy:["light_blue_concrete","blue_concrete","green_concrete","lime_concrete"],Unbreakable:1b}
give @a[x=0,gamemode=adventure,team=bggreen] lime_concrete{CanPlaceOn:["green_terracotta","blue_terracotta","green_concrete","light_blue_concrete","blue_concrete","black_concrete","lime_concrete"]}
give @a[x=0,gamemode=adventure,team=bgblue] light_blue_concrete{CanPlaceOn:["green_terracotta","blue_terracotta","green_concrete","light_blue_concrete","blue_concrete","black_concrete","lime_concrete"]}
give @a[x=0,gamemode=adventure] bow{Unbreakable:1b}
give @a[x=0,gamemode=adventure] golden_apple 8
give @a[x=0,gamemode=adventure] arrow 16
replaceitem entity @a[gamemode=adventure,team=bgblue] armor.feet leather_boots{Unbreakable:1b,display:{color:3949738}}
replaceitem entity @a[gamemode=adventure,team=bgblue] armor.legs leather_leggings{Unbreakable:1b,display:{color:3949738}}
replaceitem entity @a[gamemode=adventure,team=bgblue] armor.chest leather_chestplate{Unbreakable:1b,display:{color:3949738}}
replaceitem entity @a[gamemode=adventure,team=bgblue] armor.head leather_helmet{Unbreakable:1b,display:{color:3949738}}
replaceitem entity @a[gamemode=adventure,team=bggreen] armor.feet leather_boots{Unbreakable:1b,display:{color:6192150}}
replaceitem entity @a[gamemode=adventure,team=bggreen] armor.legs leather_leggings{Unbreakable:1b,display:{color:6192150}}
replaceitem entity @a[gamemode=adventure,team=bggreen] armor.chest leather_chestplate{Unbreakable:1b,display:{color:6192150}}
replaceitem entity @a[gamemode=adventure,team=bggreen] armor.head leather_helmet{Unbreakable:1b,display:{color:6192150}}
effect give @a[x=0,gamemode=adventure] haste 999999 1 true
scoreboard players set @a cyanpl 0
scoreboard players set @a bluepl 0
scoreboard players set @a limepl 0
scoreboard players set @a greenpl 0
execute if score bluepoints bgpoints matches 5.. run function bridgegame:endgame
execute if score greenpoints bgpoints matches 5.. run function bridgegame:endgame
kill @e[type=item,x=0]
kill @e[type=arrow,x=0]