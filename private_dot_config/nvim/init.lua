-- loads base vim settings
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/init.vim
]])

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "Mofiqul/dracula.nvim",
    lazy =  false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme dracula]])
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css", "scss", "typescript", "terraform", "yaml", "markdown", "prisma", "graphql", "fish", "gitignore", "glsl", "json" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  }
})
