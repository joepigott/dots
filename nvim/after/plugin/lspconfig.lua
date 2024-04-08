local lsp = require('lspconfig')
require('mason').setup({})
require('fidget').setup({})

lsp.pyright.setup({})
lsp.rust_analyzer.setup({})
lsp.lua_ls.setup({})
lsp.texlab.setup({})
lsp.jdtls.setup({})
lsp.svelte.setup({})
lsp.tsserver.setup({})
lsp.html.setup({})
lsp.cssls.setup({})
lsp.clangd.setup({})
lsp.cmake.setup({})
lsp.zls.setup({})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})
