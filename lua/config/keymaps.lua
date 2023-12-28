-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "jk", "<ESC>", { desc = "Leave Insert Mode", remap = true })
map("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find File", remap = true })
map("i", "kj", "<ESC>", { desc = "Leave Insert Mode", remap = true })
map("i", "JK", "<ESC>", { desc = "Leave Insert Mode", remap = true })
map("i", "KJ", "<ESC>", { desc = "Leave Insert Mode", remap = true })
map(
  "n",
  "<leader>bb",
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{})<cr>",
  { desc = "Search Buffers", remap = true }
)
map("n", "<leader>F", "<cmd>Telescope live_grep<cr>", { desc = "Search text", remap = true })
map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code Action", remap = true })
map("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document Diagnostics", remap = true })
map("n", "<leader>lw", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace Diagnostics", remap = true })
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", { desc = "Format", remap = true })
map("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Info", remap = true })
map("n", "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", { desc = "Quickfix list", remap = true })
map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Quickfix list", remap = true })
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Toggle Terminal", remap = true })
map("n", "<leader>js", "<cmd>TestNearest<cr>", { desc = "Run single test", remap = true })
map("n", "<leader>jl", "<cmd>TestLast<cr>", { desc = "Test Last", remap = true })
map("n", "<leader>jf", "<cmd>TestFile<cr>", { desc = "Test File", remap = true })
