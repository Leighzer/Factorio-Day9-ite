local sounds = require ("__base__.prototypes.entity.sounds")

data:extend(
{    
      {--prototype for object that gets stored in inventory when ore is mined
        type = "item",
        name = "dayninite-ore",
        icon = "__leighzerdayninite__/graphics/icons/dayninite-ore-3.png",
        icon_size = 64,
        icon_mipmaps = 4,
        pictures =
        {
          { size = 64, filename = "__leighzerdayninite__/graphics/icons/dayninite-ore.png",   scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__leighzerdayninite__/graphics/icons/dayninite-ore-1.png", scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__leighzerdayninite__/graphics/icons/dayninite-ore-2.png", scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__leighzerdayninite__/graphics/icons/dayninite-ore-3.png", scale = 0.25, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "x-b",
        stack_size = 50,
      },

      {
      type = "capsule",
      name = "dayheart",
      icon = "__leighzerdayninite__/graphics/icons/emotes/dayheart.png",
      icon_size = 112,
      scale = 1/1.75,
      capsule_action = 
      {
        type = "use-on-self",
        attack_parameters =
        {
          type = "projectile",
          activation_type = "consume",
          ammo_category = "capsule",
          cooldown = 30,
          range = 0,
          ammo_type =
          {
            category = "capsule",
            target_type = "position",
            action =
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  type = "damage",
                  damage = {type = "physical", amount = -80}
                },
                {
                  type = "play-sound",
                  sound = sounds.eat_fish
                }
              }
            }
          }
        }
      },
      subgroup = "leighzerdayninite-products",
      order = "z",
      stack_size = 100,
    },


})

for _,v in pairs(leighzermods.leighzerdayninite.intermediates) do
  CreateDayIntermediateItem(v)

  CreateDayIntermediateRecipe(v)  
end

--give pwr a fuel value - mostly for driving vehicles fast before nuclear :)
data.raw["item"]["daypwr"].fuel_category = "chemical"
data.raw["item"]["daypwr"].fuel_value = "4MJ"
data.raw["item"]["daypwr"].fuel_acceleration_multiplier = "1.5"
data.raw["item"]["daypwr"].fuel_top_speed_multiplier = "1.5"

--create daynine intermediates to other items
data:extend(
{ 
    {
    type = "recipe",
    name = "daynine-to-coal",        
    energy_required = 2, 
    enabled = true,
    category = "advanced-crafting",
    ingredients = {{"daypwr", 1},{"dayhot",1}},
    result = "coal",
    result_count = 10,
    subgroup = "leighzerdayninite-products",
    order = "a"
    },

    {
      type = "recipe",
      name = "daynine-to-iron-plate",        
      energy_required = 1, 
      enabled = true,
      category = "advanced-crafting",
      ingredients = {{"daypwr", 1},{"daygoblin",1}},
      result = "iron-plate",
      result_count = 1,
      subgroup = "leighzerdayninite-products",
      order = "b"
    },

    {
      type = "recipe",
      name = "daynine-to-copper-plate",        
      energy_required = 1, 
      enabled = true,
      category = "advanced-crafting",
      ingredients = {{"dayrope", 1},{"dayhot",1},{"dayknight",1}},
      result = "copper-plate",
      result_count = 1,
      subgroup = "leighzerdayninite-products",
      order = "c"
    },

    {
    type = "recipe",
    name = "daynine-to-electronic-circuit",        
    energy_required = 1,    
    enabled = true,
    category = "advanced-crafting",
    ingredients = {{"dayrope", 4},{"daysave", 4}},
    result = "electronic-circuit",
    result_count = 2,
    subgroup = "leighzerdayninite-products",
    order = "d"
    },

    {
    type = "recipe",
    name = "daynine-to-firearm-magazine",        
    energy_required = 5,
    enabled = true,
    category = "advanced-crafting",
    ingredients = {{"daygoblin", 3},{"dayknight",3}},
    result = "firearm-magazine",
    result_count = 1,
    subgroup = "leighzerdayninite-products",
    order = "e"
    },

    {
      type = "recipe",
      name = "daynine-to-stone-wall",        
      energy_required = 5,
      enabled = true,
      category = "advanced-crafting",
      ingredients = {{"dayknight",5}},
      result = "stone-wall",
      result_count = 1,
      subgroup = "leighzerdayninite-products",
      order = "f"
      },

    {
    type = "recipe",
    name = "daynine-to-dayheart",        
    energy_required = 9,
    enabled = true,
    category = "advanced-crafting",
    ingredients = {{"daydespy", 1},{"dayuhoh",1},{"dayjoy",1}},
    result = "dayheart",
    result_count = 1,
    subgroup = "leighzerdayninite-products",
    order = "g"
    }
})

table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-coal')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-iron-plate')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-copper-plate')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-electronic-circuit')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-firearm-magazine')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-stone-wall')
table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, 'daynine-to-dayheart')

