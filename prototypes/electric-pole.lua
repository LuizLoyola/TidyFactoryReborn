local pole_name = 'tf-pole'

data:extend(
{
  -- pole
  {
    type = "electric-pole",
    name = pole_name,
    flags = {"placeable-off-grid", "not-on-map"},
    subgroup = "other",
    order = "d",
    selectable_in_game = false,
    draw_copper_wires = false,
    draw_circuit_wires = false,
    collision_mask = {},
    icon = "__base__/graphics/icons/small-electric-pole.png",
    icon_size = 32,
    max_health = 100,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    drawing_box = {{-0.5, -2.6}, {0.5, 0.5}},
    maximum_wire_distance = 2,
    supply_area_distance = 2,
    destructible = false,
    pictures =
    {
      filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
      priority = "extra-high",
      width = 8,
      height = 8,
      direction_count = 1,
    },
    connection_points =
    {
      {
        wire =
        {
          copper = {0, 0},
          red = {-0.375, -0.375},
          green = {0.375, 0.375}
        },
        shadow =
        {
          copper = {0, 0},
          red = {-0.375, -0.375},
          green = {0.375, 0.375}
        },
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    }
  }
}
)
  