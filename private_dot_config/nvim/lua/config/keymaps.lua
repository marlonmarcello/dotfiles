-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- don't store to the clipboard is just deleting one character
keymap.set("n", "x", '"_x')

-- better window management
keymap.set("n", "<leader>wr", "<C-W>v", { desc = "Split Window Right", noremap = true })
keymap.set("n", "<leader>wb", "<C-W>s", { desc = "Split Window Bellow", noremap = true })
