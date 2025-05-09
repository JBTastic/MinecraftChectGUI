# Speicher alle Items in einem Marker unter dem Spieler
execute positioned ~ ~-1 ~ run data modify entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=jbt.chestmarker] Items set from block ~ ~ ~ Items

# Falls kein Marker existiert, erstelle einen
execute unless entity @e[type=armor_stand,distance=..1,tag=jbt.chestmarker] at @s run summon armor_stand ~ ~-1 ~ {Tags:["jbt.chestmarker"],Invisible:1b,Marker:1b,NoGravity:1b}

# Setze die Items im Marker
execute at @s run data modify entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=jbt.chestmarker] Items set from block ~ ~ ~ Items