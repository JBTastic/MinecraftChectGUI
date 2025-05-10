# Enable triggers for admins
execute as @a[tag=admin] run scoreboard players enable @s jbt.open_backpack
execute as @a[tag=admin] run scoreboard players enable @s jbt.close_backpack

# Open backpack: save current inv and load backpack
execute as @a[scores={jbt.open_backpack=1..}] at @s run function jbt.backpack:open_backpack
# Close backpack: save backpack and restore inv
execute as @a[scores={jbt.close_backpack=1..}] at @s run function jbt.backpack:close_backpack

# Reset triggers
scoreboard players set @a[scores={jbt.open_backpack=1..}] jbt.open_backpack 0
scoreboard players set @a[scores={jbt.close_backpack=1..}] jbt.close_backpack 0