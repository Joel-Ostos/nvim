--Mapeo tecla lider
vim.g.mapleader = " "

--Volver a in directorio atras
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

--Guardar
vim.keymap.set("i","<C-s>",vim.cmd.w)
vim.keymap.set("n","<C-s>", ":w<CR>")

--Salir de nvim
vim.keymap.set("n","<C-q>",":q<CR>")
--Moverse entre tab pages 
vim.keymap.set("n", '<Tab>', ':tabn<CR>')
vim.cmd("let g:transparent_enabled = v:true")


----------------------------------------------------------------------------------------------------------

vim.cmd[[
"Use Tab to expand and jump through snippets
imap <silent><expr> <S-Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <S-Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <Alt-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <Alt-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

----------------------------------------------------------------------------------------------------------

-- Undotree 
--Permite ver los cambios recientes en el archivo
vim.keymap.set("n", "<F5>", ":UndotreeToggle<CR>")

----------------------------------------------------------------------------------------------------------

-- LuaSnip
-- Actualiza los snippets contenidos en luasnip
vim.keymap.set("n","<leader><leader>s","<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>" )

----------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------

local builtin = require('telescope.builtin')

-- Abrir menu de busqueda de archivos
vim.keymap.set("n", "<C-f>", builtin.find_files, {})
vim.keymap.set("i", "<C-f>",builtin.find_files,{})

-- Buscar palabra en la que esta se encuentra el cursor
vim.keymap.set("n", '<leader>bs', builtin.grep_string, {})

-- Menu de busqueda de palabras
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--Buscar palabra con la barra de busqueda
vim.keymap.set("n","<leader>ps",function()
	builtin.grep_string({search = vim.fn.input("Buscar: ")});

end)

----------------------------------------------------------------------------------------------------------

