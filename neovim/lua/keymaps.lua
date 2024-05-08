-- space bar leader key
vim.g.mapleader = " "


vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")


-- yank to clipboard
 vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- format python with black formting 
vim.keymap.set('n', "<leader>fmp", ":silent !black %<cr>")
