#> enchantplus_extensions:spawners/ray/continue
#
#  @description advance to the next raycast step (0.1 blocks) and process collisions
#
scoreboard players remove $remaining enchantplusext.data 1

execute if block ~ ~ ~ minecraft:spawner run return run function enchantplus_extensions:spawners/upgrade_spawner_data
execute if block ~ ~ ~ minecraft:trial_spawner run return run function enchantplus_extensions:spawners/upgrade_trial_spawner_data
execute unless block ~ ~ ~ #enchantplus_extensions:spawners if score $remaining enchantplusext.data matches 1.. positioned ^ ^ ^0.1 run function enchantplus_extensions:spawners/ray/continue
