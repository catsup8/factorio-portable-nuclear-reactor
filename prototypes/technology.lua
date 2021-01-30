data:extend({
    {
        type = "technology",
        name = "c8-portable-nuclear-reactor-equipment",
        icon = "__base__/graphics/technology/nuclear-power.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "c8-portable-nuclear-reactor-equipment"
            }
        },
        prerequisites = { "modular-armor", "nuclear-power", "low-density-structure" },
        unit =
        {
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1}
            },
            count = 300,
            time = 30
        },
        order = "e-p-b-c"
    }
})
