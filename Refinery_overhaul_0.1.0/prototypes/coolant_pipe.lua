
--pipe connection coordinates. 
--no. of connections = 
pipe_connections = {
	[0] = {	position = {0,1}, position = {0,-1}, position = {-1,0}, position = {1,0}	},

	[1] = {	position = {0,1}, position = {-1,0}, position = {0,1}	},
	[2] = {	position = {0,1}, position = {0,-1}, position = {0,1}	},
	[3] = {	position = {-1,0}, position = {1,0}, position = {0,1}	},
	[4] = {	position = {1,0}, position = {-1,0}, position = {0,1}	},

	[5] = {	position = {0,-1}, position = {0,1}	},
	[6] = {	position = {-1,0}, position = {1,0}	},

	[7] = {	position = {0,1}, position = {1,0}	},
	[8] = {	position = {0,-1}, position = {1,0}	},
	[9] = {	position = {0,-1}, position = {-1,0}	},
	[10] = {	position = {0,1}, position = {-1,0}	}
}

--todo: fix indentation
for k, v in pairs(pipe_connections) do
	local entity = {
    type = "pipe",
    name = "thermal-pipe" .. k,
    icon = "__base__/graphics/icons/pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "thermal-pipe" .. k},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    --fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures = pipepictures(),
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.85
        }
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },

    horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
			}
	data:extend({entity})
end