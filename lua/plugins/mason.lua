local settings = require("configuration")
local servers = settings.lspconfig_servers
local ensured = settings.mason_ensure_installed

return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonInstallAll",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
      "MasonUpdate",
    },
    lazy = false,
    keys = { { "<leader>M", "<cmd>Mason<cr>", desc = "Mason Menu" } },
    config = function()
      for i = 1, #ensured do
        servers[#servers + 1] = ensured[i]
      end
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        vim.cmd("MasonInstall " .. table.concat(servers, " "))
      end, {})
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
  },

  {
    "RubixDev/mason-update-all",
    cmd = "MasonUpdateAll",
    config = function()
      require("mason-update-all").setup()
      vim.api.nvim_create_autocmd("User", {
        pattern = "MasonUpdateAllComplete",
        callback = function()
          print("mason-update-all has finished")
        end,
      })
    end,
  },
}
