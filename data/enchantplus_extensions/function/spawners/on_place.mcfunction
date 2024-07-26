#> enchantplus_extensions:spawners/on_place
#
#  @within      advancement enchantplus_extensions:util/place_spawner reward
#  @executed    as performer, at performer
#  @description allow advancment to be reused, process spawner placement
#

advancement revoke @s only enchantplus_extensions:util/place_spawner
function enchantplus_extensions:spawners/ray/start
