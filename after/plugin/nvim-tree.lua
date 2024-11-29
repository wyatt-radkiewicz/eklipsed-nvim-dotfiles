local WIDTH_RATIO = 0.6
local HEIGHT_RATIO = 0.8
local screen_width = vim.opt.columns:get()
local screen_height = vim.opt.lines:get() - vim.opt.cmdheight:get()

require("nvim-tree").setup {
  view = {
    float = {
      enable = true,
      open_win_config = function()
        local desired_width = screen_width * WIDTH_RATIO
        local desired_height = screen_height * HEIGHT_RATIO

        return {
          relative = "editor",
          border = "rounded",
          col = math.floor((screen_width - desired_width) / 2),
          row = math.floor((screen_height - desired_height) / 2),
          width = math.floor(desired_width),
          height = math.floor(desired_height),
        }
      end,
    },

    width = function()
      return math.floor(screen_width * WIDTH_RATIO)
    end,
  }
}

