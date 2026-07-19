local sounds = require("__base__.prototypes.entity.sounds")
local path_util = require("__sei-library-2__.path_util")

sounds.tesla_turret_rotate = {
  sound = {
    filename = "__sei-tesla-turret-2__/sound/entity/tesla-turret/tesla-turret-rotation-loop.ogg",
    volume = 0.7,
    aggregation = { max_count = 2, remove = true, count_already_playing = true },
    advanced_volume_control = {
      fades = {
        fade_in = {
          curve_type = "S-curve",
          from = { control = 0.5, volume_percentage = 0.0 },
          to = { 1.5, 100.0 },
        },
      },
    },
  },
  stopped_sound = {
    filename = "__sei-tesla-turret-2__/sound/entity/tesla-turret/tesla-turret-rotation-stop.ogg",
    volume = 0.7,
  },
  minimal_change_per_tick = 0.001,
  minimal_sound_duration_for_stopped_sound = 5,
}
sounds.tesla_turret_activate = {
  filename = "__sei-tesla-turret-2__/sound/entity/tesla-turret/tesla-turret-activate.ogg",
  volume = 0.8,
  aggregation = { max_count = 2, remove = true, count_already_playing = true },
  advanced_volume_control = {
    fades = {
      fade_in = {
        curve_type = "S-curve",
        from = { control = 0.5, volume_percentage = 0.0 },
        to = {
          2,
          100.0,
        },
      },
    },
  },
}
sounds.tesla_turret_deactivate = {
  filename = "__sei-tesla-turret-2__/sound/entity/tesla-turret/tesla-turret-deactivate.ogg",
  volume = 0.5,
  aggregation = { max_count = 2, remove = true, count_already_playing = true },
  advanced_volume_control = {
    fades = {
      fade_in = {
        curve_type = "S-curve",
        from = { control = 0.5, volume_percentage = 0.0 },
        to = {
          2,
          100.0,
        },
      },
    },
  },
}
sounds.tesla_turret_beam_deflect = {
  variations = path_util.sa_sound_variations(
    "__sei-tesla-turret-2__/sound/entity/tesla-turret/tesla-turret-beam-deflection",
    6,
    0.6
  ),
  aggregation = { max_count = 2, remove = true, count_already_playing = true },
  advanced_volume_control = {
    fades = {
      fade_in = {
        curve_type = "S-curve",
        from = { control = 0.5, volume_percentage = 0.5 },
        to = {
          1,
          100.0,
        },
      },
    },
  },
}

return sounds
