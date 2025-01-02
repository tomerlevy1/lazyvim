-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = ""
vim.opt.colorcolumn = "120"
vim.opt.updatetime = 50
vim.opt.hlsearch = false
vim.opt.foldenable = false

vim.diagnostic.config({
  float = { border = "rounded" },
})

vim.g.lazyvim_prettier_needs_config = false
vim.g.lazyvim_picker = "telescope"
