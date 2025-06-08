-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<M-Up>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })
vim.keymap.set("i", "<M-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up", noremap = true, silent = true })
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })

vim.keymap.set("n", "<M-Down>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
vim.keymap.set("i", "<M-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down", noremap = true, silent = true })
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
