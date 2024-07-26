#> enchantplus_extensions:load
#
#  @within      #load:load
#  @executed    default context
#  @description create default scoreboard, configure max raycast distance in deciblocks
#
scoreboard objectives add enchantplusext.data dummy
scoreboard players set $max_distance enchantplusext.data 1600
