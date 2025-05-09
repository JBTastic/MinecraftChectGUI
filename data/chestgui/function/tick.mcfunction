# Erlaube Admins, die Trigger zu benutzen
execute as @a[tag=admin] run scoreboard players enable @s jbt.save_items
execute as @a[tag=admin] run scoreboard players enable @s jbt.restore_items

# Wenn /trigger jbt.save_items ausgeführt wurde, speichere Chest
execute as @a[scores={jbt.save_items=1..}] at @s run function chestgui:save
# Wenn /trigger jbt.restore_items ausgeführt wurde, stelle wieder her
execute as @a[scores={jbt.restore_items=1..}] at @s run function chestgui:restore

# Trigger zurücksetzen
scoreboard players set @a[scores={jbt.save_items=1..}] jbt.save_items 0
scoreboard players set @a[scores={jbt.restore_items=1..}] jbt.restore_items 0