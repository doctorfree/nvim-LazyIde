local settings = require("configuration")
local formatters_linters = settings.mason_ensure_installed
local table_contains = require("utils.functions").table_contains

vim.filetype.add({
  extension = {
    zsh = "zsh",
  },
})

local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local actions = null_ls.builtins.code_actions

local conf_sources = {
  actions.gitsigns,
  diagnostics.zsh.with({ filetypes = { "zsh" } }),
}

if table_contains(formatters_linters, "actionlint") then
  table.insert(conf_sources, diagnostics.actionlint)
end
if table_contains(formatters_linters, "stylua") then
  table.insert(
    conf_sources,
    formatting.stylua.with({
      timeout = 10000,
      extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
    })
  )
end
if table_contains(formatters_linters, "prettier") then
  table.insert(
    conf_sources,
    formatting.prettier.with({
      -- milliseconds
      timeout = 10000,
      extra_args = { "--single-quote", "false" },
    })
  )
else
  table.insert(conf_sources, formatting.eslint_d)
end
if table_contains(formatters_linters, "ruff") then
  if vim.fn.executable("ruff") == 1 then
    table.insert(conf_sources, diagnostics.ruff)
  end
end
if table_contains(formatters_linters, "black") then
  if vim.fn.executable("black") == 1 then
    table.insert(
      conf_sources,
      formatting.black.with({
        timeout = 10000,
        extra_args = { "--fast" },
      })
    )
  end
end
if table_contains(formatters_linters, "beautysh") then
  if vim.fn.executable("beautysh") == 1 then
    table.insert(
      conf_sources,
      formatting.beautysh.with({
        timeout = 10000,
        extra_args = { "--indent-size", "2" },
      })
    )
  end
end
if table_contains(formatters_linters, "latexindent") then
  table.insert(
    conf_sources,
    -- https://github.com/cmhughes/latexindent.pl/releases/tag/V3.9.3
    formatting.latexindent.with({
      timeout = 10000,
      extra_args = { "-g", "/dev/null" },
    })
  )
end
if table_contains(formatters_linters, "shellcheck") then
  table.insert(
    conf_sources,
    actions.shellcheck.with({
      timeout = 10000,
      filetypes = { "sh", "zsh", "bash" },
    })
  )
end
if table_contains(formatters_linters, "shfmt") then
  table.insert(
    conf_sources,
    formatting.shfmt.with({
      timeout = 10000,
      extra_args = { "-i", "2", "-ci", "-bn" },
      filetypes = { "sh", "zsh", "bash" },
    })
  )
end
if table_contains(formatters_linters, "sql_formatter") then
  table.insert(
    conf_sources,
    formatting.sql_formatter.with({
      timeout = 10000,
      extra_args = { "--config" },
    })
  )
end
if table_contains(formatters_linters, "markdownlint") then
  table.insert(
    conf_sources,
    formatting.markdownlint.with({
      timeout = 10000,
    })
  )
end
if settings.enable_coding then
  if table_contains(formatters_linters, "goimports") then
    table.insert(
      conf_sources,
      formatting.goimports.with({
        timeout = 10000,
      })
    )
  end
  if table_contains(formatters_linters, "gofumpt") then
    table.insert(
      conf_sources,
      formatting.gofumpt.with({
        timeout = 10000,
      })
    )
  end
  if table_contains(formatters_linters, "golines") then
    table.insert(
      conf_sources,
      formatting.golines.with({
        timeout = 10000,
      })
    )
  end
  if table_contains(formatters_linters, "google-jave-format") then
    table.insert(
      conf_sources,
      formatting.google_java_format.with({
        timeout = 10000,
      })
    )
  end
end

null_ls.setup({
  debug = true,
  sources = conf_sources,
  should_attach = function(bufnr)
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    if ft == "dbui" or ft == "dbout" or ft:match("sql") then
      return false
    end
    return true
  end,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          if AUTOFORMAT_ACTIVE then -- global var defined in functions.lua
            vim.lsp.buf.format({ bufnr = bufnr })
          end
        end,
      })
    end
  end,
})
