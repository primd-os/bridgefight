execute as @a[scores={cyanpl=1}] run function bridgegame:cypl
execute as @a[scores={limepl=1}] run function bridgegame:lipl
execute as @a[scores={bluepl=1}] run function bridgegame:blpl
execute as @a[scores={greenpl=1}] run function bridgegame:grpl
execute as @a[x=0] at @s as @a[y=75,dy=-100,gamemode=adventure] run kill
execute as @a[x=0] at @s as @s[x=21.0,y=100,z=-1.0,dx=3,dy=0,dz=3,gamemode=adventure,team=bggreen] run function bridgegame:greenwin
execute as @a[x=0] at @s as @s[x=-24.0,y=100,z=-1.0,dx=3,dy=0,dz=3,gamemode=adventure,team=bgblue] run function bridgegame:bluewin
title @a[x=0] actionbar ["",{"text":"Blue: "},{"score":{"name":"bluepoints","objective":"bgpoints"}},{"text":" Green: "},{"score":{"name":"greenpoints","objective":"bgpoints"}}]
execute as @a[x=0] at @s as @a[x=-5.5,y=116,z=-1,dx=2.5,dy=2,dz=3,gamemode=adventure] run team join bggreen
execute as @a[x=0] at @s as @a[x=2.5,y=116,z=-1,dx=2.5,dy=2,dz=3,gamemode=adventure] run team join bgblue
execute as @a[x=0] at @s as @a[x=-1,y=116,z=-3,dx=1,dy=2,dz=1,gamemode=adventure] run team leave @s
execute unless entity @a[x=0] run function bridgegame:endgame
execute if score trash bgprogress matches 1 run gamemode spectator @a[x=0,team=!bgblue,team=!bggreen]
effect give @a[x=0,gamemode=adventure] haste 1 1 true