--Abrir una nueva terminal flotante
vim.keymap.set('n', '<A-i>', ':FloatermNew<CR>')
vim.keymap.set("t","<A-i>", vim.cmd.FloatermNew)

--Esconder la terminal flotante
vim.keymap.set('t', '<A-o>', vim.cmd.FloatermHide)

--Matar la terminal flotante actual
vim.keymap.set('t', '<A-k>', vim.cmd.FloatermKill)

--Moverse entre diferentes terminales
vim.keymap.set("n","<A-.>", vim.cmd.FloatermNext)
vim.keymap.set("t","<A-.>", vim.cmd.FloatermNext)
vim.keymap.set("n","<A-,>", vim.cmd.FloatermPrev)
vim.keymap.set("t","<A-,>", vim.cmd.FloatermPrev)

