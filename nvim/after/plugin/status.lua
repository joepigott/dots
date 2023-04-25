local hardline = require('hardline')
require('gitsigns').setup({})

hardline.setup({
    bufferline = true,
    bufferline_settings = {
        exclude_terminal = true,
        show_index = false
    },
    theme = 'default',
    sections = {
        {class = 'mode', item = require('hardline.parts.mode').get_item},
        {class = 'high', item = require('hardline.parts.git').get_item},
        '%<',
        {class = 'med', item = '%='},
        {class = 'low', item = require('hardline.parts.treesitter-context').get_item},
        {class = 'error', item = require('hardline.parts.lsp').get_error},
        {class = 'warning', item = require('hardline.parts.lsp').get_warning},
        {class = 'mode', item = require('hardline.parts.line').get_item}
    }
})
