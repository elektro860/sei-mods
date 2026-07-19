local Util = {}

function Util.sa_sprite_load(path, table)
  return util.sprite_load(path, table)
end

function Util.sa_sound_variations(filename, variations, volume, modifiers)
  return sound_variations(filename, variations, volume, modifiers)
end

function Util.sa_sound_variations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
  return sound_variations_with_volume_variations(filename, variations, min_volume, max_volume, modifiers)
end

return Util
