require('smear_cursor').setup{
  enabled = true,
  stiffness = 0.7,               -- 0.6      [0, 1]
  trailing_stiffness = 0.4,      -- 0.3      [0, 1]
  distance_stop_animating = 0.5, -- 0.1      > 0
  hide_target_hack = false,      -- true     boolean
}
