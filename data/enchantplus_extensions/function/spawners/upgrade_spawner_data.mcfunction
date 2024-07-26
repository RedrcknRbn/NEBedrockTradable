#> enchantplus_extensions:spawners/upgrade_spawner_data
#
#  @within      enchantplus_extensions:spawners/ray/continue
#  @executed    at the block location, as performer
#  @description copy transferred data from stored components to actual block-entity data for 'normal' spawners
#
execute unless data block ~ ~ ~ components.minecraft:custom_data.EnchantPlusExt.hasData run return -1

data merge block ~ ~ ~ { SpawnData: { entity: {} } }
data modify block ~ ~ ~ SpawnData.entity.id set from block ~ ~ ~ components.minecraft:custom_data.EnchantPlusExt.type
