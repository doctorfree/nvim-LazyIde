local settings = require("configuration")

local terminal_nvim = {}
if settings.enable_terminal then
  terminal_nvim = {
    "rebelot/terminal.nvim",
    cmd = {
      "Asciiville",
      "TermOpen",
      "TermToggle",
      "TermRun",
      "Lazygit",
      "IPython",
      "Lazyman",
      "Lazyconf",
      "Webdev",
      "Htop",
    },
    lazy = false,
    config = function()
      require("config.terminal_nvim")
    end,
  }
end

return { terminal_nvim }
