# Stelle gespeicherte Items wieder in die Kiste unter dem Spieler her
execute if block ~ ~-0.6 ~ minecraft:chest run data modify block ~ ~-0.6 ~ Items set from storage chestgui:main all
# Optional: Feedback
execute if block ~ ~-0.6 ~ minecraft:chest run tellraw @s {"text":"Chest content restored!","color":"gold"}