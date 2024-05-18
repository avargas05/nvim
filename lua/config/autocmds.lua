-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local bopts = vim.bo
local wopts = vim.wo

-- File type spacing
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "meson", "lua" },
  callback = function()
    bopts.tabstop = 4
    bopts.shiftwidth = 4
    bopts.softtabstop = 4
    bopts.textwidth = 79
    wopts.cc = "80,73"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "h", "rust" },
  callback = function()
    wopts.cc = "100"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua" },
  callback = function()
    bopts.tabstop = 2
    bopts.shiftwidth = 2
    bopts.softtabstop = 2
    bopts.textwidth = 79
    wopts.cc = "80,73"
  end,
})
