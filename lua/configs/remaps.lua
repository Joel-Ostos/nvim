--Mapeo tecla lider
vim.g.mapleader = " "

--Volver a in directorio atras
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

--Guardar
vim.keymap.set("i","<C-s>",vim.cmd.w)
vim.keymap.set("n","<C-s>", ":w<CR>")

--Salir de nvim
vim.keymap.set("n","<C-q>",":q<CR>")
