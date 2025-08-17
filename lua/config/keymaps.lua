-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local Util = require("lazyvim.util")
--
-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end
--
-- local opts = { noremap = true, silent = true }
--
-- map("n", "<M-Up>", ":resize -2<CR>", opts)
-- map("n", "<M-Down>", ":resize +2<CR>", opts)
-- map("n", "<M-Left>", ":vertical resize -2<CR>", opts)
-- map("n", "<M-Right>", ":vertical resize +2<CR>", opts)
-- map("v", "p", '"_dP', opts)
--
-- map("n", "<leader>h", ":nohl<CR>", { desc = "Remove highlight", remap = true })
-- map("n", "]g", ":lua vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic", remap = true })
-- map("n", "{g", ":lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic", remap = true })
--
-- map("i", "jk", "<ESC>", { desc = "Leave Insert Mode", remap = true })
-- map("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find File", remap = true })
-- map("i", "kj", "<ESC>", { desc = "Leave Insert Mode", remap = true })
-- map("i", "JK", "<ESC>", { desc = "Leave Insert Mode", remap = true })
-- map("i", "KJ", "<ESC>", { desc = "Leave Insert Mode", remap = true })
-- map(
--   "n",
--   "<leader>bb",
--   "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{})<cr>",
--   { desc = "Search Buffers", remap = true }
-- )
-- map("n", "<leader>F", "<cmd>Telescope live_grep<cr>", { desc = "Search text", remap = true })
-- map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code Action", remap = true })
-- map("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document Diagnostics", remap = true })
-- map("n", "<leader>lw", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace Diagnostics", remap = true })
-- map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", { desc = "Format", remap = true })
-- map("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Info", remap = true })
-- map("n", "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", { desc = "Quickfix list", remap = true })
-- map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Quickfix list", remap = true })
-- map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Toggle Terminal", remap = true })
-- map("n", "<leader>js", "<cmd>TestNearest<cr>", { desc = "Run single test", remap = true })
-- map("n", "<leader>jl", "<cmd>TestLast<cr>", { desc = "Test Last", remap = true })
-- map("n", "<leader>jf", "<cmd>TestFile<cr>", { desc = "Test File", remap = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps set by LazyVim can be found at:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add your additional custom keymaps below

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or { noremap = true, silent = true }
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- General mappings
map("n", "<M-Up>", ":resize -2<CR>")
map("n", "<M-Down>", ":resize +2<CR>")
map("n", "<M-Left>", ":vertical resize -2<CR>")
map("n", "<M-Right>", ":vertical resize +2<CR>")
map("v", "p", '"_dP')

-- Clear search highlights
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })

-- Diagnostic navigation
map("n", "]g", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
map("n", "[g", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

-- Insert mode escape via jk/kj etc.
map("i", "jk", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "kj", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "JK", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "KJ", "<ESC>", { desc = "Leave Insert Mode" })

-- Telescope mappings
map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find File" })
map("n", "<leader>bb", function()
  require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))
end, { desc = "Search Buffers" })
map("n", "<leader>F", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
map("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Document Diagnostics" })
map("n", "<leader>lw", "<cmd>Telescope diagnostics<CR>", { desc = "Workspace Diagnostics" })

-- LSP related mappings
map("n", "<leader>lf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format Document" })
map("n", "<leader>la", function()
  vim.lsp.buf.code_action()
end, { desc = "Code Action" })
map("n", "<leader>lr", function()
  vim.lsp.buf.rename()
end, { desc = "Rename Symbol" })
map("n", "<leader>lq", function()
  vim.diagnostic.setloclist()
end, { desc = "Set Quickfix List" })
map("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "LSP Info" })

-- Terminal and testing mappings
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>", { desc = "Toggle Terminal" })
map("n", "<leader>js", "<cmd>TestNearest<CR>", { desc = "Run Single Test" })
map("n", "<leader>jl", "<cmd>TestLast<CR>", { desc = "Run Last Test" })
map("n", "<leader>jf", "<cmd>TestFile<CR>", { desc = "Run Tests in File" })
