local path_util = require("__sei-library__.path_util")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "cryogenic-plant",
        icon = "__sei-cryogenic-plant__/graphics/icons/cryogenic-plant.png",
        subgroup = "chemistry",
        order = "e[chemical-plant]-a[cryogenic-plant]",
        inventory_move_sound = item_sounds.mechanical_large_inventory_move,
        pick_sound = item_sounds.mechanical_large_inventory_pickup,
        drop_sound = item_sounds.mechanical_large_inventory_move,
        place_result = "cryogenic-plant",
        stack_size = 20,
        weight = 200 * kg
    },
})
