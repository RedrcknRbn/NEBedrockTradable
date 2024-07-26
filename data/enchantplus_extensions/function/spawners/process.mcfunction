#> enchantplus_extensions:spawners/process
#
# @within      #minecraft:tick
# @executed    default context
# @description handles processing loot drops from the Spawner Touch enchantment.
#

execute as @e[type=item, tag=!enchantplus_ext.suppress_skip, nbt={Item:{components:{"minecraft:custom_data":{SuppressExperience:1b}}}}] at @s run function enchantplus_extensions:spawners/suppress_experience

execute as @e[type=item, tag=!enchantplus_ext.suppress_skip] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{SuppressExperience:1b}}}}] run tag @s add enchantplus_ext.suppress_skip
