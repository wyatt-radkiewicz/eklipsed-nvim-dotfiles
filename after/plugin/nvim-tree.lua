-- Since we have the window show up centered in the middle of the screen,
-- we set a width and height ratio corresponding to the screen
local WIDTH_RATIO = 0.6
local HEIGHT_RATIO = 0.8

-- Get actual screen width and height (minus cmd bar)
local screen_width = vim.opt.columns:get()
local screen_height = vim.opt.lines:get() - vim.opt.cmdheight:get()

require("nvim-tree").setup {
  view = {
    float = {
      -- Make the window float above the others
      enable = true,

      -- What to do when opening the window
      open_win_config = function()
        -- What size we want the window to be exactly
        local desired_width = screen_width * WIDTH_RATIO
        local desired_height = screen_height * HEIGHT_RATIO

        return {
          -- Set relative to editor and set rounded borders
          relative = "editor",
          border = "rounded",

          -- Center the window
          col = math.floor((screen_width - desired_width) / 2),
          row = math.floor((screen_height - desired_height) / 2),

          -- Round the exact window size
          width = math.floor(desired_width),
          height = math.floor(desired_height),
        }
      end,
    },

    -- Width of the inner contents (just make same as window width)
    width = function()
      return math.floor(screen_width * WIDTH_RATIO)
    end,
  }
}

