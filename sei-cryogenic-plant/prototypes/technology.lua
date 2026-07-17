data:extend({
    {
        type = "technology",
        name = "cryogenic-plant",
        icon = "__sei-cryogenic-plant__/graphics/technology/cryogenic-plant.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "cryogenic-plant"
            },
        },
        prerequisites = {"space-science-pack"},
        unit = {
            count = 200,
            time = 60,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1}
            }
        }
    },
})
