vim.keymap.set("n", "<Leader>ex", "<Cmd>Ex<Cr>") -- Explorer

-- Buffer
vim.keymap.set("n", "<Tab>", ":bnext<Cr>")  -- Navigation next
vim.keymap.set("n", "<Leader><Tab>", ":bprevious<Cr>") -- Navigation previous
vim.keymap.set("n", "<Leader>w", ":bd<Cr>") -- Close all buffers

-- Split navigation
vim.keymap.set("n", "<C-\\>", ":vs<Cr>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

