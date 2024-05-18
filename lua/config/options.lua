-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local gopts = vim.g
local opts = vim.o
local bopts = vim.b

opts.tabstop = 2
opts.shiftwidth = 2
opts.softtabstop = 2
opts.expandtab = true
opts.autoindent = true
opts.cc = "80"
opts.breakindent = true
opts.breakindentopt = "shift:2"

gopts.python3_host_prog = "~/.config/nvim/.venv/bin/python3"
