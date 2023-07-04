-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")
-- Silent keymap option
local opts = { silent = true }

local function map(mode, lhs, rhs, mapopts)
  local keys = require("lazy.core.handler").handlers.keys
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    mapopts = mapopts or {}
    mapopts.silent = mapopts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, mapopts)
  end
end

-- Plugin Management
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy Menu" })
map("n", "<leader>U", "<cmd>Lazy update<cr>", { desc = "Lazy Update" })
-- Options
map("n", "<leader>o", "<cmd>options<cr>", { desc = "Options" })

-- Dashboard
-- Add keymap to open alpha dashboard
map("n", "<leader>;", function()
  -- close all open buffers before open dashboard
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")
    if buftype ~= "terminal" then
      vim.api.nvim_buf_delete(bufnr, { force = true })
    end
  end

  if Util.has("alpha-nvim") then
    require("alpha").start(true)
  end
end, opts)

-- Close buffers
if Util.has("mini.bufremove") then
  map("n", "<S-q>", function()
    require("mini.bufremove").delete(0, false)
    local bufs = vim.fn.getbufinfo({ buflisted = true })
    -- open alpha if no buffers are left
    if not bufs[2] and Util.has("alpha-nvim") then
      require("alpha").start(true)
    end
  end, opts)
else
  map("n", "<S-q>", "<cmd>bd<CR>", opts)
end

-- Better paste
-- remap "p" in visual mode to delete the highlighted text without overwriting your yanked/copied text, and then paste the content from the unnamed register.
map("v", "p", '"_dP', opts)

-- Copy whole file content to clipboard with C-c
map("n", "<C-c>", ":%y+<CR>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move live up or down
-- moving
map("n", "<A-Down>", ":m .+1<CR>", opts)
map("n", "<A-Up>", ":m .-2<CR>", opts)
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- LspSaga
if Util.has("lspsaga.nvim") then
  -- when you use action in finder like open vsplit then you can
  map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

  -- Code action
  map({ "n", "v" }, "gla", "<cmd>Lspsaga code_action<CR>")

  -- Rename all occurrences of the hovered word for the entire file
  map("n", "glr", "<cmd>Lspsaga rename<CR>")

  -- Rename all occurrences of the hovered word for the selected files
  map("n", "glR", "<cmd>Lspsaga rename ++project<CR>")

  -- Peek definition
  map("n", "gld", "<cmd>Lspsaga peek_definition<CR>")

  -- Diagnostic jump can use `<c-o>` to jump back
  map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
  map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

  -- Diagnostic jump with filters such as only jumping to an error
  map("n", "[E", function()
    require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
  end)
  map("n", "]E", function()
    require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
  end)

  -- Toggle Outline
  map("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

  -- Callhierarchy
  map("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
  map("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")
end

-- Trouble
-- Add keymap only show FIXME
if Util.has("todo-comments.nvim") then
  -- show fixme on telescope
  map("n", "<leader>xf", "<cmd>TodoTelescope keywords=FIX,FIXME<CR>")
end

-- Gitsigns
-- Add toggle gitsigns blame line
if Util.has("gitsigns.nvim") then
  map("n", "<leader>ub", "<cmd>lua require('gitsigns').toggle_current_line_blame()<CR>", {
    desc = "Toggle current line blame",
  })
end

-- Refactoring
if Util.has("refactoring.nvim") then
  -- remap to open the Telescope refactoring menu in visual mode
  map(
    "v",
    "<leader>rr",
    "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
    { desc = "Refactors", noremap = true }
  )
end

-- Harpoon
if Util.has("harpoon") then
  map("n", "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", {
    desc = "Toggle Harpoon menu",
  })

  map("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", {
    desc = "Add file to Harpoon",
  })
end

-- Fix Spell checking
map("n", "z0", "1z=", {
  desc = "Fix world under cursor",
})
