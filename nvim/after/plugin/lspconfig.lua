local lsp = require('lspconfig')
require('mason').setup({})

lsp.pyright.setup({})
lsp.rust_analyzer.setup({})
lsp.lua_ls.setup({})
lsp.texlab.setup({})
lsp.jdtls.setup({})
