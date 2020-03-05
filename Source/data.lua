if not leighzermods then --generic mod variable to store information that may be needed later
    leighzermods = {}
end

if not leighzermods.leighzerdayninite then
    leighzermods.leighzerdayninite = {}

    leighzermods.leighzerdayninite.tints = {}
    leighzermods.leighzerdayninite.tints.daynineyello = {r=255/255, g=167/255, b=26/255}--color used for ore patch when viewed from mini map

    --we have all of the twitch channel emote graphics in this mod, however, to keep complexity down we are only
    --using 9 of them, plus, it is good for branding
    leighzermods.leighzerdayninite.intermediates = {
        -- "daybroken",
        -- "dayderp",        
        -- "dayfive",
        -- "dayb",
        -- "dayg",
        -- "dayp",   
        -- "daygg",
        -- "dayglhf",
        "daygoblin",
        -- "dayhey",
        "daypwr",
        "dayhot",
        -- "daysheriff",
        -- "dayheart",
        -- "daypurr",
        "dayjoy",
        "daydespy",
        "dayuhoh",
        -- "dayhowdy",
        -- "dayhmm",
        -- "dayhuu",
        -- "dayj",        
        "dayknight",
        -- "dayluck",
        -- "daymug",
        "dayrope",
        "daysave",
        -- "daysick",
        -- "daystory",
        -- "daytroll",        
        -- "dayblack",
        -- "dayblue",
        -- "dayred",
        -- "daywhite",
        -- "daygreen" 
    }
end

if not leighzermods.leighzerdayninite.productivityEnabledRecipes then --list of recipe names that are going to get productivity modules enabled
    leighzermods.leighzerdayninite.productivityEnabledRecipes = {}
end

require("prototypes.functions")

require("prototypes.particle")--protoypes for particles that fly when you hand mine dayninite
require("prototypes.mapgen")--autoplace control and noise layer
require("prototypes.resource")--the actual entity that is in the ground
require("prototypes.category")--prototypes for adding separate tab for dayninite processing recipes
require("prototypes.item-recipe")--prototypes for objects that exist in inventory
require("prototypes.recipe")--prototypes for recipes


for k, v in pairs(data.raw.module) do
    if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs(leighzermods.leighzerdayninite.productivityEnabledRecipes) do
        if data.raw["recipe"][recipe] then
        table.insert(v.limitation, recipe)
        end
    end
    end
end



