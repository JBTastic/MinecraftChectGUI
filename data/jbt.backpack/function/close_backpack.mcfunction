# Save current player inventory (backpack) to storage.backpack
execute as @s run data modify storage jbt.backpack:main backpack set from entity @s Inventory
# Clear player inventory
execute as @s run clear @s
# Restore original inventory from storage.inv
execute as @s run data modify entity @s Inventory set from storage jbt.backpack:main inv
# Feedback
tellraw @s {"text":"Backpack closed! Inventory restored!","color":"green"}