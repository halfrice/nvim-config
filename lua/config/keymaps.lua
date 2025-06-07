-- stylua: ignore start
-- cut / copy / paste
vim.keymap.set("n", "<leader>y", "\"*y", { desc = "Copy to system clipboard" }) 
vim.keymap.set("v", "<leader>y", "\"*y", { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", "gg\"*yG", { desc = "Copy entire file to clipboard" })
vim.keymap.set("n", "<leader>X", "gg\"*dG", { desc = "Cut entire file to clipboard" })
vim.keymap.set("v", "<leader>p", "\"_dP", { desc = "Overwrite selection with clipboard without overwriting clipboard with selection" }) 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { 
  desc = "Modify and replace all words cursor is on with typed text" })

-- lines
-- allow highlighted lines to be moved up or down as a block with auto-indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z") -- join next line with current line while keeping cursor in place

-- navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- misc
-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- scrolling
-- half-page scrolling leaves cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- search terms stay centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- stylua: ignore end
