local settings = require("configuration")
local lualine = { "nvim-lualine/lualine.nvim" }

if settings.enable_copilot then
  -- Add status line icon for Copilot
  if settings.enable_codeium then
    -- Add Codeium and Copilot status to lualine
    lualine = {
      "nvim-lualine/lualine.nvim",
      opts = function(_, opts)
        table.insert(opts.sections.lualine_y, 2, {
          function()
            return vim.fn["codeium#GetStatusString"]()
          end,
        })
        local Util = require("lazyvim.util")
        table.insert(opts.sections.lualine_x, 2, {
          function()
            local icon = require("lazyvim.config").icons.kinds.Copilot
            return icon
          end,
          cond = function()
            local ok, clients = pcall(vim.lsp.get_active_clients, { name = "copilot", bufnr = 0 })
            return ok and #clients > 0
          end,
          color = function()
            return Util.fg("Special")
          end,
        })
      end,
    }
  else
    -- Add Copilot status to lualine
    lualine = {
      "nvim-lualine/lualine.nvim",
      opts = function(_, opts)
        local Util = require("lazyvim.util")
        table.insert(opts.sections.lualine_x, 2, {
          function()
            local icon = require("lazyvim.config").icons.kinds.Copilot
            return icon
          end,
          cond = function()
            local ok, clients = pcall(vim.lsp.get_active_clients, { name = "copilot", bufnr = 0 })
            return ok and #clients > 0
          end,
          color = function()
            return Util.fg("Special")
          end,
        })
      end,
    }
  end
else
  if settings.enable_codeium then
    -- Add Codeium status to lualine
    lualine = {
      "nvim-lualine/lualine.nvim",
      opts = function(_, opts)
        table.insert(opts.sections.lualine_x, 2, {
          function()
            return vim.fn["codeium#GetStatusString"]()
          end,
        })
      end,
    }
  end
end

return { lualine }
