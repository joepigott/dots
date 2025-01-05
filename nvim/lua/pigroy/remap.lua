local nnoremap = require("pigroy.keymap").nnoremap
local lsp_lines = require("lsp_lines")

--- tree ---
nnoremap("<C-n>", "<cmd>NvimTreeToggle<CR>")

--- windows ---
nnoremap("<leader>w", "<cmd>vne<CR>")
nnoremap("<leader>W", "<cmd>new<CR>")
nnoremap("<C-h>", "<C-W>h")
nnoremap("<C-j>", "<C-W>j")
nnoremap("<C-k>", "<C-W>k")
nnoremap("<C-l>", "<C-W>l")

--- term ---
nnoremap("<leader>t", "<cmd>ToggleTerm direction=horizontal<cr>")
nnoremap("<leader>T", "<cmd>ToggleTerm direction=vertical<cr>")

--- telescope ---
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>fe", "<cmd>Telescope diagnostics<cr>")

--- motions ---
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

--- lsp lines ---
nnoremap("<leader>l", function() lsp_lines.toggle() end)
