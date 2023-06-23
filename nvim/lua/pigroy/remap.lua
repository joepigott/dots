local nnoremap = require("pigroy.keymap").nnoremap

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
nnoremap("<leader>t", function()
    require("nvterm.terminal").new "horizontal"
end)
nnoremap("<leader>T", function()
    require("nvterm.terminal").new "vertical"
end)

--- telescope ---
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
