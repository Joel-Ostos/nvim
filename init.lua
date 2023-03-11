require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.cmd("colorscheme purpura")
vim.opt.sw = 2
local nvim_set_option = vim.api.nvim_set_option
nvim_set_option("guifont", "Hack_Nerd_Font_Regular.ttf")
syntax = enable
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
