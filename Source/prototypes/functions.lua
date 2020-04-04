local dayIntermediateItemOrder = "a" --using a and appending a as ints are sorted as string, so using repeated a's gurantees it is sorted as we want
function CreateDayIntermediateItem(intermediateName)
    data:extend(
    { 
        {--prototype for object that gets stored in inventory when ore is mined
        type = "item",
        name = intermediateName,
        icon = "__leighzerdayninite__/graphics/icons/emotes/"..intermediateName..".png",
        icon_size = 112,
        scale = 1/1.75,
        subgroup = "leighzerdayninite-intermediates",
        order = dayIntermediateItemOrder,
        stack_size = 50,
        }
    })  
    dayIntermediateItemOrder = dayIntermediateItemOrder .. "a"
end

local dayIntermediateRecipeOrder = "a"
function CreateDayIntermediateRecipe(intermediateName)
    data:extend(
    { 
        {--recipe prototype that allows for crafting morphite into iron
        type = "recipe",
        name = intermediateName,
        --icon = "__leighzerdayninite__/graphics/icons/dayninite-refinement.png",
        --icon_size = 64,
        --scale = 1,
        energy_required = 1,        
        enabled = true,
        category = "advanced-crafting",
        ingredients = {{"dayninite-ore", 1}},
        result = intermediateName,
        result_count = 1,
        subgroup = "leighzerdayninite-intermediates",
        order = dayIntermediateRecipeOrder
        }
    })
    dayIntermediateRecipeOrder = dayIntermediateRecipeOrder .. "a"

    table.insert(leighzermods.leighzerdayninite.productivityEnabledRecipes, intermediateName)--so we can use prod modules when machines make emotes

end