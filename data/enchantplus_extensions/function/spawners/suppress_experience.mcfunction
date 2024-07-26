#> enchantplus_extensions:spawners/suppress_experience
#
#  @within      enchantplus_extensions:spawners/process
#  @executed    as the item entity, at its location
#  @description Suppresses experience orbs from dropping. Run once maximum per entity.
#

kill @e[type=experience_orb, distance=..1.25]
tag @s add enchantplus_ext.suppress_skip
