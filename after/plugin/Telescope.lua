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


