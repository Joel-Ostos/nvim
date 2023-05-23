require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.opt.sw = 2
vim.cmd("colorscheme moonbow")


----------------------- Acá nos encargamos de identificar si estamos en un archivo .tex
function archivo()
  if vim.fn.expand('%:e') == "tex" then
    vim.keymap.set("n", "<leader>co",":silent !zathura %:p:r.pdf &<CR>")
    vim.keymap.set("n", "<C-s>",":w<CR> :! xelatex %:p<CR>")
    vim.cmd("setlocal spell")
    vim.cmd("set spelllang=es");
  end
end
-----------------------


archivo()
local nvim_set_option = vim.api.nvim_set_option


require'cmp'.setup {
  sources = {
    { name = 'path' }
  }
}
