vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move up and down with shift+j and shift+k in visual mode
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- when using shift+j in normal mode the cursor stays in the line start
vim.keymap.set("n", "J", "mzJ`z")


-- when moving half page up and down the cursor stays in the midle
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- on search move the cursor to the position where the element is 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- on paste over a selection, dont quit the copy item from the buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- copy entire line  on normal mode or visual mode
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

--copy entire line with \n in normal mode
vim.keymap.set("n", "<leader>Y", '"+Y')

-- deleteing registers
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- replace all
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make script executables without using chmod from console
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
