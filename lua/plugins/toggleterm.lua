local settings = require("configuration")
local toggleterm = {}

if settings.enable_toggleterm then
  toggleterm = {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      direction = "float",
      autochdir = false,
      float_opts = {
        -- [ top top top - right - bottom bottom bottom - left ]
        border = { "▄", "▄", "▄", "█", "▀", "▀", "▀", "█" },
        winblend = 0,
      },
      highlights = {
        FloatBorder = { link = "ToggleTermBorder" },
        Normal = { link = "ToggleTerm" },
        NormalFloat = { link = "ToggleTerm" },
      },
    },
  }
end

return { toggleterm }
