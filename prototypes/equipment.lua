fuel_categories = { "nuclear" };

-- burn MOX fuel in PlutoniumEnergy mod if it is installed
if(mods["PlutoniumEnergy"]) then
    table.insert(fuel_categories, {"MOX"})
end

nuclear_reactor = {
    type = "generator-equipment",
    name = "c8-portable-nuclear-reactor-equipment",
    sprite =
    {
        filename = "__base__/graphics/icons/nuclear-reactor.png",
        width = 64,
        height = 64,
        priority = "medium"
    },
    shape =
    {
        width = 2,
        height = 2,
        type = "full"
    },
    
    -- in real world, efficiency value will currently never be above 0.2
    -- in the near future, ASRGs (radioisotope version of Stirling engine, currently being researched by NASA) might achieve this number
    -- I'm using that technology as the basis of these values
    burner =
    {
        effectivity = 0.5,
        emissions_per_second_per_watt = 0,      -- no emissions, except for nuclear waste
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        fuel_category = "nuclear",
        fuel_categories = fuel_categories
    },

    power = "600kW",
    energy_source =
    {
        type = "burner",
        usage_priority = "secondary-output"
    },
    categories = { "armor" }
}

data:extend({nuclear_reactor})
