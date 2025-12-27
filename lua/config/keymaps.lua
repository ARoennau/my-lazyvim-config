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

-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or { noremap = true, silent = true }
--     if opts.remap and not vim.g.vscode then
--       opts.remap = nil
--     end
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end
--
-- -- General mappings
-- map("n", "<M-Up>", ":resize -2<CR>")
-- map("n", "<M-Down>", ":resize +2<CR>")
-- map("n", "<M-Left>", ":vertical resize -2<CR>")
-- map("n", "<M-Right>", ":vertical resize +2<CR>")
-- map("v", "p", '"_dP')
--
-- -- Clear search highlights
-- map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })
--
-- -- Diagnostic navigation
-- map("n", "]g", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
-- map("n", "[g", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
--
-- -- Insert mode escape via jk/kj etc.
-- map("i", "jk", "<ESC>", { desc = "Leave Insert Mode" })
-- map("i", "kj", "<ESC>", { desc = "Leave Insert Mode" })
-- map("i", "JK", "<ESC>", { desc = "Leave Insert Mode" })
-- map("i", "KJ", "<ESC>", { desc = "Leave Insert Mode" })
--
-- -- Telescope mappings
-- map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find File" })
-- map("n", "<leader>bb", function()
--   require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))
-- end, { desc = "Search Buffers" })
-- map("n", "<leader>F", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
-- map("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Document Diagnostics" })
-- map("n", "<leader>lw", "<cmd>Telescope diagnostics<CR>", { desc = "Workspace Diagnostics" })
--
-- -- LSP related mappings
-- map("n", "<leader>lf", function()
--   vim.lsp.buf.format({ async = true })
-- end, { desc = "Format Document" })
-- map("n", "<leader>la", function()
--   vim.lsp.buf.code_action()
-- end, { desc = "Code Action" })
-- map("n", "<leader>ca", function()
--   vim.lsp.buf.code_action()
-- end, { desc = "Code Action" })
-- map("n", "<leader>lr", function()
--   vim.lsp.buf.rename()
-- end, { desc = "Rename Symbol" })
-- map("n", "<leader>lq", function()
--   vim.diagnostic.setloclist()
-- end, { desc = "Set Quickfix List" })
-- map("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "LSP Info" })
--
-- -- Terminal and testing mappings
-- map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>", { desc = "Toggle Terminal" })
-- map("n", "<leader>js", "<cmd>TestNearest<CR>", { desc = "Run Single Test" })
-- map("n", "<leader>jl", "<cmd>TestLast<CR>", { desc = "Run Last Test" })
-- map("n", "<leader>jf", "<cmd>TestFile<CR>", { desc = "Run Tests in File" })
-- vim.keymap.set("i", "<C-i>", "<cmd>Copilot suggestion<CR>", { desc = "Copilot: Request Suggestion (Manual Trigger)" })

-- Helper function to define mappings
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

-------------------------------------------------------------------------------
-- 1. VS CODE SPECIFIC (Muscle memory from your VSCodeVim JSON)
-------------------------------------------------------------------------------
if vim.g.vscode then
  local vscode = require("vscode")

  -- Editor Navigation (S-h / S-l)
  map("n", "<S-l>", function()
    vscode.action("workbench.action.nextEditorInGroup")
  end)
  map("n", "<S-h>", function()
    vscode.action("workbench.action.previousEditorInGroup")
  end)

  -- Buffer/Editor Management
  map("n", "<leader>bb", function()
    vscode.action("workbench.action.showAllEditors")
  end)
  map("n", "<leader>bd", function()
    vscode.action("workbench.action.closeActiveEditor")
  end)
  map("n", "<leader>bo", function()
    vscode.action("workbench.action.closeOtherEditors")
  end)
  map("n", "<leader>bl", function()
    vscode.action("workbench.action.closeEditorsToTheLeft")
  end)
  map("n", "<leader>br", function()
    vscode.action("workbench.action.closeEditorsToTheRight")
  end)

  -- UI Toggle (Explorer and Panels)
  map("n", "<leader>e", function()
    vscode.action("workbench.view.explorer")
  end)
  map("n", "<leader>.", function()
    vscode.action("workbench.action.toggleSidebarVisibility")
  end)
  map("n", "<leader>th", function()
    vscode.action("workbench.action.togglePanel")
  end)

  -- Search (Telescope Replacements)
  map("n", "<C-p>", function()
    vscode.action("workbench.action.quickOpen")
  end)
  map("n", "<leader>F", function()
    vscode.action("workbench.action.findInFiles")
  end)
  map("n", "<leader>cf", function()
    vscode.action("copyRelativeFilePath")
  end)

  -- Git logic
  map("n", "<leader>gs", function()
    vscode.action("workbench.view.scm")
  end)
  map("n", ":G", function()
    vscode.action("workbench.view.scm")
  end)
  map("n", "<leader>gg", function()
    vscode.action("lazygit-vscode.toggle")
  end)
  map("n", "<leader>gc", function()
    vscode.action("gitlens.copyRemoteFileUrlToClipboard")
  end)
  map({ "n", "v" }, "<leader>gB", function()
    vscode.action("github.browser.openItem")
  end, { desc = "Open in GitHub" })

  -- LSP / Code Intelligence
  map("n", "<leader>la", function()
    vscode.action("editor.action.quickFix")
  end)
  map("n", "<leader>ca", function()
    vscode.action("editor.action.quickFix")
  end)
  map("n", "<leader>aw", function()
    vscode.action("editor.action.quickFix")
  end)
  map("n", "<leader>lr", function()
    vscode.action("editor.action.rename")
  end)
  map("n", "<leader>rn", function()
    vscode.action("editor.action.rename")
  end)
  map("n", "<leader>lf", function()
    vscode.action("editor.action.formatDocument")
  end)
  map("n", "K", function()
    vscode.action("editor.action.showHover")
  end)
  map("n", "gl", function()
    vscode.action("editor.action.showHover")
  end)
  map("n", "gr", function()
    vscode.action("editor.action.goToReferences")
  end)
  map("n", "gy", function()
    vscode.action("editor.action.goToTypeDefinition")
  end)
  map("n", "<leader>cd", function()
    vscode.action("editor.action.showHover")
    vscode.action("workbench.action.showErrorsWarnings")
  end)

  -- Diagnostics / Breakpoints
  map("n", "]g", function()
    vscode.action("editor.action.marker.nextInFiles")
  end)
  map("n", "[g", function()
    vscode.action("editor.action.marker.prevInFiles")
  end)
  map("n", "<leader>db", function()
    vscode.action("editor.debug.action.toggleBreakpoint")
  end)

  -- Visual Mode (Move Lines)
  map("v", "J", function()
    vscode.action("editor.action.moveLinesDownAction")
  end)
  map("v", "K", function()
    vscode.action("editor.action.moveLinesUpAction")
  end)
end

-------------------------------------------------------------------------------
-- 2. UNIVERSAL (Terminal & VS Code)
-------------------------------------------------------------------------------
-- Search Highlight
map("n", "<C-n>", ":nohlsearch<CR>", { desc = "Clear highlight" })
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Remove highlight" })

-- Escape sequences
map("i", "jk", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "kj", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "JK", "<ESC>", { desc = "Leave Insert Mode" })
map("i", "KJ", "<ESC>", { desc = "Leave Insert Mode" })

-- Visual Mode Paste & Indent
map("v", "p", '"_dP')
map("v", "<", "<gv")
map("v", ">", ">gv")

-------------------------------------------------------------------------------
-- 3. TERMINAL ONLY (Telescope, ToggleTerm, Nvim LSP)
-------------------------------------------------------------------------------
if not vim.g.vscode then
  -- Force % to work correctly
  map("n", "%", "<Plug>(matchup-%)")
  map("v", "%", "<Plug>(matchup-%)")

  -- Telescope
  map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find File" })
  map("n", "<leader>bb", function()
    require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))
  end, { desc = "Search Buffers" })
  map("n", "<leader>F", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
  map("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Document Diagnostics" })
  map("n", "<leader>lw", "<cmd>Telescope diagnostics<CR>", { desc = "Workspace Diagnostics" })

  -- Diagnostics
  map("n", "]g", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
  map("n", "[g", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })

  -- Resize
  map("n", "<M-Up>", ":resize -2<CR>")
  map("n", "<M-Down>", ":resize +2<CR>")
  map("n", "<M-Left>", ":vertical resize -2<CR>")
  map("n", "<M-Right>", ":vertical resize +2<CR>")

  -- LSP
  map("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
  end)
  map("n", "<leader>la", function()
    vim.lsp.buf.code_action()
  end)
  map("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
  end)
  map("n", "<leader>lr", function()
    vim.lsp.buf.rename()
  end)
  map("n", "<leader>lq", function()
    vim.diagnostic.setloclist()
  end)
  map("n", "<leader>li", "<cmd>LspInfo<CR>")

  -- Testing & Term
  map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>")
  map("n", "<leader>js", "<cmd>TestNearest<CR>")
  map("n", "<leader>jl", "<cmd>TestLast<CR>")
  map("n", "<leader>jf", "<cmd>TestFile<CR>")

  -- Git
  map({ "n", "v" }, "<leader>gB", ":GBrowse<CR>", { desc = "Open in GitHub" })
end

-- Copilot
vim.keymap.set("i", "<C-i>", "<cmd>Copilot suggestion<CR>", { desc = "Copilot" })
