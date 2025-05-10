# Setup triggers and clear storage
# Create trigger objectives
scoreboard objectives add jbt.open_backpack trigger
scoreboard objectives add jbt.close_backpack trigger
# Temp for loops
scoreboard objectives add temp dummy

# Initialize storage
data modify storage jbt.backpack:main inv set value []
data modify storage jbt.backpack:main backpack set value []