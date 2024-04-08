local palettes = {
    all = {
        red     = { base = "#e68a8a", bright = "#f2b1b1", dim = "#7c5248"},
        green   = { base = "#99cc99", bright = "#b2d8b2", dim = "#626b55" },
        yellow  = { base = "#fad7a0", bright = "#f7dcb4", dim = "#7f795f" },
        blue    = { base = "#6699cc", bright = "#87cefa", dim = "#656d77" },
        magenta = { base = "#c8a2c8", bright = "#d8bfd8", dim = "#74657a" },
        cyan    = { base = "#6fc3b2", bright = "#64dbdb", dim = "#5f7776" },
        white   = { base = "#e2cebe", bright = "#f2f2f2", dim = "#8c8775" },
        orange  = { base = "#d39972", bright = "#ed8f50", dim = "#9e775d" },
        pink    = { base = "#c48398", bright = "#ea7097", dim = "#936473" },

        bg0 = "#141414",
        bg1 = "#000000",
        bg2 = "#3d3d3d",
        bg3 = "#5e5e5e",
        bg4 = "#707070",

        fg0 = "#f2f2f2",
        fg1 = "#c5c5c5",
        fg2 = "#adadad",
        fg3 = "#a2a2a2",

        comment = "#5d5d5d",

        sel0 = "#2f2f2f",
        sel1 = "#2f2f2f",
    }
}

local specs = {
    all = {
        syntax = {
            func = "blue.bright",
            const = "orange",
            preproc = "yellow.bright"
        }
    }
}

-- i write mostly Rust, so these are tailored specifically for that. it might
-- not look as good with other syntax highlighting groups
local groups = {
    all = {
        ["@text.todo"]             = { fg = "palette.orange" },
        ["@parameter"]              = { fg = "palette.cyan" },
        ["@type.builtin"]          = { fg = "palette.cyan" },
        ["@variable"]              = { fg = "palette.fg1" },
        ["@text.emphasis"]         = { fg = "palette.fg1", style = "italic" },
        ["@text.strong"]           = { fg = "palette.fg1", style = "bold"},
        ["@text.environment"]      = { fg = "palette.pink" },
        ["@text.environment.name"] = { fg = "palette.fg1" },
        ["@text.math"]             = { fg = "palette.fg1" },
        ["@comment.documentation"] = { fg = "palette.orange" },
        ["@function"]              = { fg = "palette.blue.bright" },
        ["@include"]               = { fg = "palette.magenta" },
        ["@namespace"]             = { fg = "palette.cyan" },
        ["@punctuation.delimiter"] = { fg = "palette.magenta"},
        ["@function.macro"]        = { fg = "palette.yellow.bright" },
        ["@punctuation.special"]   = { fg = "palette.yellow" },
        ["@operator"]              = { fg = "palette.magenta" },
        ["@field"]                 = { fg = "palette.blue" },
        -- rust specific
        ["@field.rust"]            = { fg = "palette.blue" },
        ["@lsp.typemod.comment.documentation.rust"]
                                   = { fg = "palette.orange" },
    }
}

local options = {
    styles = {
        comments = "italic",
    }
}

require("nightfox").setup({
    palettes = palettes,
    options = options,
    specs = specs,
    groups = groups
})
vim.cmd("colorscheme nightfox") -- first call initializes
vim.cmd("colorscheme nightfox") -- second fixed blue indent lines (?)

require("colorizer").setup({})
