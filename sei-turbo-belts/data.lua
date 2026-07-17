require("__sei-turbo-belts__.prototypes.entity.remnants")
require("__sei-turbo-belts__.prototypes.entity.explosions")
require("__sei-turbo-belts__.prototypes.particles")
require("__sei-turbo-belts__.prototypes.entity.transport-belts")
require("__sei-turbo-belts__.prototypes.item")
require("__sei-turbo-belts__.prototypes.recipe")
require("__sei-turbo-belts__.prototypes.technology")

-- data.raw.item["turbo-transport-belt"].subgroup = "transport-belt"
-- data.raw.item["turbo-underground-belt"].subgroup = "underground-belt"
-- data.raw.item["turbo-splitter"].subgroup = "splitter"

if mods["aai-loaders"] then
	require("prototypes.aai-loaders")
end
