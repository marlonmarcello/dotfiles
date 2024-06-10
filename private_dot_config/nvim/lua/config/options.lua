-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.have_nerd_font = false
vim.g.editorconfig = true

local opt = vim.opt

opt.wrap = true
opt.title = true
opt.showcmd = true
opt.scrolloff = 10
opt.backspace = { "start", "eol", "indent" }
opt.wildignore:append({ "*/node_modules/*" })
