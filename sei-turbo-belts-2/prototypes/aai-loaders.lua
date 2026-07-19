local ingredients = settings.startup["aai-loaders-mode"].value == "expensive"
		and {
			{ type = "item", name = "se-iridium-plate", amount = 50 },
			{ type = "item", name = "aai-express-loader", amount = 1 },
			{ type = "item", name = "processing-unit", amount = 50 },
			{ type = "item", name = "electric-engine-unit", amount = 50 },
			{ type = "fluid", name = "lubricant", amount = 1600 },
		}
	or {
		{ type = "item", name = "se-iridium-plate", amount = 5 },
		{ type = "item", name = "aai-express-loader", amount = 1 },
		{ type = "item", name = "processing-unit", amount = 5 },
		{ type = "item", name = "electric-engine-unit", amount = 5 },
		{ type = "fluid", name = "lubricant", amount = 160 },
	}

local turbo_specs = {
	name = "turbo",
	transport_belt = "turbo-transport-belt",
	color = { 155, 182, 0 },
	fluid = "lubricant",
	fluid_per_minute = "0.25",
	technology = {
		prerequisites = { "turbo-transport-belt", "aai-express-loader", "processing-unit" },
		unit = {
			count = 500,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "se-material-science-pack-1", 1 },
			},
			time = 15,
		},
	},
	recipe = {
		categories = { "crafting-with-fluid" },
		ingredients = ingredients,
		energy_required = 2,
	},
	unlubricated_recipe = {
		categories = { "crafting-with-fluid" },
		ingredients = ingredients,
		energy_required = 10,
	},
}

AAILoaders.make_tier(turbo_specs)

if settings.startup["aai-loaders-mode"].value ~= "graphics-only" then
	--graphics only mode won't have aai's loader defined, so avoid interacting with them if it is graphics only

	--turbo loaders are faster than a single normal quality stack inserter, but are slower than a legendary one. they deserve to be expensive to launch
	for _, loader in pairs({
		{ name = "", count = 50 },
		{ name = "fast-", count = 50 },
		{ name = "express-", count = 25 },
		{ name = "turbo-", count = 10 },
	}) do
		data.raw["item"]["aai-" .. loader.name .. "loader"].weight = 1000000 / loader.count
	end
end
