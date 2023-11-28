local palettes = {
    all = {
        red     = { base = "#d18777", bright = "#f26d4f", dim = "#7c5248"},
        green   = { base = "#a0b77c", bright = "#a5dd4f", dim = "#626b55" },
        yellow  = { base = "#c6b675", bright = "#ddc14d", dim = "#7f795f" },
        blue    = { base = "#6e8db5", bright = "#4d8ee2", dim = "#656d77" },
        magenta = { base = "#a589af", bright = "#b46dce", dim = "#74657a" },
        cyan    = { base = "#80b5b2", bright = "#4bc6c0", dim = "#5f7776" },
        white   = { base = "#e5e0c9", bright = "#edeade", dim = "#8c8775" },
        orange  = { base = "#d39972", bright = "#ed8f50", dim = "#9e775d" },
        pink    = { base = "#c48398", bright = "#ea7097", dim = "#936473" },

        bg0 = "#141412",
        bg1 = "#1c1d17",
        bg2 = "#3d3d35",
        bg3 = "#5e5d52",
        bg4 = "#807e70",

        fg0 = "#edeade",
        fg1 = "#e5e0c9",
        fg2 = "#c3bfab",
        fg3 = "#a29f8e",

        comment = "#8c8775",

        sel0 = "#302f29",
        sel1 = "#302f29",
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
vim.cmd("colorscheme nightfox") -- second fixes blue indent lines (??)

require("colorizer").setup({})
