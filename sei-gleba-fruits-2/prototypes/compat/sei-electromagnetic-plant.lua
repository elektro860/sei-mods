if not mods["sei-electromagnetic-plant-2"] then return end

local data_util = require("__sei-library-2__.data_util")

data_util.add_additional_category_to_recipes("electromagnetics", {"carbon-fiber-robot-frame"})
