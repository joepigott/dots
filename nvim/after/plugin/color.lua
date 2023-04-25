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
        bg1 = "#1c1b17",
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

local options = {
    styles = {
        comments = "italic",
    }
}

require("nightfox").setup({ palettes = palettes, options = options })
vim.cmd("colorscheme nightfox") -- first call initializes
vim.cmd("colorscheme nightfox") -- second fixes blue indent lines (??)

require("colorizer").setup({})
