#> enchantplus_extensions:spawners/upgrade_trial_spawner_data
#
#  @within      enchantplus_extensions:spawners/ray/continue
#  @executed    at the block location, as performer
#  @description compute cooldown state, transfer stored data to spawner block
#
execute unless data block ~ ~ ~ components.minecraft:custom_data.EnchantPlusExt.hasData run return -1

# to prevent cooldown cheating, we need to determine if it's expired or not
execute store result score $now enchantplusext.data run time query gametime
execute store result score $cooldown_after enchantplusext.data run data get block ~ ~ ~ components.minecraft:custom_data.EnchantPlusExt.blockData.cooldown_ends_at

# set to cooldown state
execute if score $cooldown_after enchantplusext.data matches 1.. if score $now enchantplusext.data < $cooldown_after enchantplusext.data run setblock ~ ~ ~ minecraft:trial_spawner[trial_spawner_state=cooldown]

# merge all the captured data into the spawner
data modify block ~ ~ ~ {} merge from block ~ ~ ~ components.minecraft:custom_data.EnchantPlusExt.blockData
