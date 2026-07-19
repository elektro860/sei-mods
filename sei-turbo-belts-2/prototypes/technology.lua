data:extend({
	{
		type = "technology",
		name = "turbo-transport-belt",
		icon = "__sei-turbo-belts__/graphics/technology/turbo-transport-belt.png",
		icon_size = 256,
		effects = {
			{
				type = "unlock-recipe",
				recipe = "turbo-transport-belt",
			},
			{
				type = "unlock-recipe",
				recipe = "turbo-underground-belt",
			},
			{
				type = "unlock-recipe",
				recipe = "turbo-splitter",
			},
		},
		prerequisites = { "se-material-science-pack-1", "logistics-3" },
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
			time = 60,
		},
	},
})
