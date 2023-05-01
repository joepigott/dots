local sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'diagnostics'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
}

require('lualine').setup({
    options = {
        disabled_filetypes = {'NvimTree'},
    },
    sections = sections
})

require("nvterm").setup({})
