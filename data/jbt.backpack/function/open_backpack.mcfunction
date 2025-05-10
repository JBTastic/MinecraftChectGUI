# Save player inventory to storage.inv
execute as @s run data modify storage jbt.backpack:main inv set from entity @s Inventory
# Clear player inventory
execute as @s run clear @s
# Load backpack contents into player inventory
execute as @s run data modify entity @s Inventory set from storage jbt.backpack:main backpack
# Feedback
tellraw @s {"text":"Backpack opened!","color":"gold"}