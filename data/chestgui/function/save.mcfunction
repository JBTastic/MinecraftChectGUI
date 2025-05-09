# Speichere Items der Kiste unter dem Spieler in storage
execute if block ~ ~-0.6 ~ minecraft:chest run data modify storage chestgui:main all set from block ~ ~-0.6 ~ Items
# Optional: Feedback
execute if block ~ ~-0.6 ~ minecraft:chest run tellraw @s {"text":"Chest content saved!","color":"green"}