-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.swapfile = false
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.expandtab = true

local g = vim.g
g["test#strategy"] = "neovim"
g["test#neovim#term_position"] = "vert"
