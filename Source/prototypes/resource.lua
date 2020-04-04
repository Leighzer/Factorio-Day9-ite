data:extend(
{   
   {--prototype for the actual ore object that is in the ground
   type = "resource",
   name = "dayninite-ore",
   icon = "__leighzerdayninite__/graphics/icons/dayninite-ore.png",
   icon_size = 64,
   flags = {"placeable-neutral"},
   order="x-b",
   map_color = leighzermods.leighzerdayninite.tints.daynineyello,--color used for ore patch when viewed from mini map
   minable =
   {     
     mining_particle = "dayninite-ore-particle",
     mining_time = 1,
     result = "dayninite-ore"
   },
   collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
   selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
   autoplace = resource_autoplace.resource_autoplace_settings{
    name = "dayninite-ore",
    order = "z",
    base_density = 10,
    has_starting_area_placement = true,    
    regular_rq_factor_multiplier = 1.10,
    starting_rq_factor_multiplier = 1.5
  },
  
  stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
  stages =
  {
    sheet =
    {
      filename = "__leighzerdayninite__/graphics/entity/dayninite-ore/dayninite-ore.png",
      priority = "extra-high",      
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
        filename = "__leighzerdayninite__/graphics/entity/dayninite-ore/hr-dayninite-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    }
  }   
 
  }
}
) 