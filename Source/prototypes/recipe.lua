--currently unused

--were originally going to split the ore into all possible emotes, but doesn't look good in factorio UI really...

-- data:extend(
-- {  
--      {
--          type = "recipe",
--          name = "dayninite-to-intermediates",
--          icon = "__leighzerdayninite__/graphics/icons/dayninite-refinement.png",
--          icon_size = 128,
--          scale = 0.5,
--          energy_required = 1, 
--          enabled = true,
--          category = "crafting",
--          ingredients = {{"dayninite-ore", 1}},
--          results = {},         
--          subgroup = "leighzerdayninite-intermediates",
--          order = "a"
--      }
-- })

-- for _,v in pairs(leighzermods.leighzerdayninite.intermediates) do
--     table.insert(data.raw["recipe"]["dayninite-to-intermediates"].results,{name=v,amount=1})
-- end