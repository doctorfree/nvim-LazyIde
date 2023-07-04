local settings = require("configuration")
local enable_copilot = settings.enable_copilot
local copilot = {}
local copilot_cmp = {}

if enable_copilot then
  copilot = {
    "zbirenbaum/copilot.lua",
    build = ":Copilot auth",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("config.copilot")
    end,
  }
  copilot_cmp = {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  }
end

return {
  copilot,
  copilot_cmp,
}
