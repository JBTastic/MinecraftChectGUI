# Items aus dem Marker zurück in die Kiste kopieren
execute at @s run data modify block ~ ~ ~ Items set from entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1,tag=jbt.chestmarker] Items

# Marker entfernen
kill @e[type=armor_stand,distance=..1,tag=jbt.chestmarker]