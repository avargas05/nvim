-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- vim-tmux-navigator
if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end

local keymap_opts = { buffer = buffer }
-- Code navigation and shortcuts
map("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
map("n", "K", vim.lsp.buf.hover, keymap_opts)
map("n", "gD", vim.lsp.buf.implementation, keymap_opts)
map("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
map("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
map("n", "gr", vim.lsp.buf.references, keymap_opts)
map("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
map("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
map("n", "gd", vim.lsp.buf.definition, keymap_opts)
map("n", "ga", vim.lsp.buf.code_action, keymap_opts)

return {}
