# Trigger aktivieren für alle Admins
data modify storage chestgui:tmp LastChest set from block ~ ~-1 ~ Items

execute as @a[tag=admin] run scoreboard players enable @s jbt.save_items
execute as @a[tag=admin] run scoreboard players enable @s jbt.restore_items

# Trigger Handler
execute as @a[scores={jbt.save_items=1..}] run function chestgui:save_items
execute as @a[scores={jbt.restore_items=1..}] run function chestgui:restore_items

# Trigger reset
scoreboard players set @a[scores={jbt.save_items=1..}] jbt.save_items 0
scoreboard players set @a[scores={jbt.restore_items=1..}] jbt.restore_items 0