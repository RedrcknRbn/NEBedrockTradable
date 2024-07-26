#> enchantplus_extensions:spawners/ray/start
#
#  @executed    as origin player
#  @description begin a new raycast to detect the placed block
#
scoreboard players operation $remaining enchantplusext.data = $max_distance enchantplusext.data

execute at @s anchored eyes positioned ^ ^ ^0.1 run function enchantplus_extensions:spawners/ray/continue
