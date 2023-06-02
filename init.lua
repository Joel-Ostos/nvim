require("configs")
require('mini.move').setup()
vim.opt.termguicolors = true
vim.opt.sw = 2
vim.cmd("colorscheme moonbow")
vim.cmd("set encoding=utf-8")
vim.cmd[[packadd termdebug]]
vim.cmd([[autocmd VimEnter * tnoremap <Esc> <C-\><C-n>]])
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

vim.cmd("let g:netrw_browsex_viewer='-'")
vim.cmd[[function! NFH_pdf(f)
    execute '!zathura' shellescape(a:f) "&"
endfunction]]
