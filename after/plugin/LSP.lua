local lsp = require('lsp-zero')
lsp.preset('recommended')
require('lspconfig').intelephense.setup{root_dir  = require('lspconfig').util.root_pattern(".git","package.json","inicio.json")}
lsp.setup()
