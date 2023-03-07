require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.cmd("colorscheme melange")
vim.opt.sw = 2
local nvim_set_option = vim.api.nvim_set_option
nvim_set_option("guifont", "Hack_Nerd_Font_Regular.ttf")
syntax = enable
--Moverse entre buffers
vim.keymap.set("n", '<Tab>', ':tabn<CR>')
vim.cmd("let g:transparent_enabled = v:true")
vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <S-Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <S-Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <Alt-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <Alt-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
