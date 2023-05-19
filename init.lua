require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.opt.sw = 2
local nvim_set_option = vim.api.nvim_set_option
nvim_set_option("guifont", "Hack Nerd Font")
syntax = enable
-- vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme moonbow")


