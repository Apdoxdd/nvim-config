vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<C-u>", "<C-u>zz") --move up half a page, make cursor in the middle of screen
keymap.set("n", "<C-d>", "<C-d>zz") -- same as above but down

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
-- Space + s + v  → vertical split
-- Space + s + h  → horizontal split
-- Space + s + e  → make splits equal
-- Space + s + x  → close current split

keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase height" })
keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease height" })
keymap.set("n", "<C-Left>", ":vertical resize -4<CR>", { desc = "Narrower" })
keymap.set("n", "<C-Right>", ":vertical resize +4<CR>", { desc = "Wider" })


