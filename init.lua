require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.opt.sw = 2
local nvim_set_option = vim.api.nvim_set_option
vim.cmd("colorscheme moonbow")

vim.cmd("inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u")

