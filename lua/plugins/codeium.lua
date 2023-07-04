local settings = require("configuration")
local enable_codeium = settings.enable_codeium

local codeium = {}
if enable_codeium then
  codeium = {
    "jcdickinson/codeium.nvim",
    commit = "b1ff0d6c993e3d87a4362d2ccd6c660f7444599f",
    cmd = "Codeium",
    event = "InsertEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = true,
  }
end

return { codeium }
