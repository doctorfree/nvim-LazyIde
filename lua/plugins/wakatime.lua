local settings = require("configuration")

local wakatime_type = {}
if settings.enable_wakatime then
  wakatime_type = {
    "wakatime/vim-wakatime",
    lazy = false
  }
end

return { wakatime_type }
