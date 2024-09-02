local palettes = {
    all = {
        red     = { base = "#de524a", bright = "#ff7162" },
        green   = { base = "#22d87a", bright = "#c9ee5e" },
        yellow  = { base = "#ecc747", bright = "#edd682" },
        blue    = { base = "#2366c3", bright = "#7fb4ff" },
        magenta = { base = "#9132e8", bright = "#c17fff" },
        cyan    = { base = "#55e7f0", bright = "#a7ecef" },
        white   = { base = "#e5e9e6", bright = "#fafafa" },
        orange  = { base = "#E27024", bright = "#ffb27f" },
        pink    = { base = "#e65bad", bright = "#dda19f" },

        bg0 = "#0f0b0d",
        bg1 = "#130912",
        bg2 = "#252123",
        bg3 = "#5f5b5d",
        bg4 = "#7f7b7d",

        fg0 = "#e5e9e6",
        fg1 = "#c5c9c6",
        fg2 = "#a5a9a6",
        fg3 = "#858986",

        comment = "#5f5b5d",

        sel0 = "#2f2b2d",
        sel1 = "#2f2b2d",
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
