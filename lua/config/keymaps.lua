-- remove disliked keybinding
vim.keymap.del("n", "<leader>K")
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader>.")
vim.keymap.del("n", "<leader>/")
vim.keymap.del("n", "<leader>S")
vim.keymap.del("n", "<leader>,")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>:")

--  remove keybinding related with tabs
vim.keymap.del("n", "<leader><tab>l") -- Last tab
vim.keymap.del("n", "<leader><tab>f") -- First tab
vim.keymap.del("n", "<leader><tab><tab>") -- New tab
vim.keymap.del("n", "<leader><tab>]") -- Next tab
vim.keymap.del("n", "<leader><tab>[") -- Previous tab
vim.keymap.del("n", "<leader><tab>d") -- Close tab
vim.keymap.del("n", "<leader><tab>o") -- remove other tabs

-- remove keybinding related with diagnostic / quickfix
vim.keymap.del("n", "<leader>xl")
vim.keymap.del("n", "<leader>xL")

--now the keymaps that i want
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer &<CR>")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

vim.api.nvim_set_keymap("n", "<C-s>", ":lua SaveFile()<CR>", { noremap = true, silent = true })
function SaveFile()
  -- Check if a buffer with a file is open
  if vim.fn.empty(vim.fn.expand("%:t")) == 1 then
    vim.notify("No file to save", vim.log.levels.WARN)
    return
  end

  local success, err = pcall(function()
    vim.cmd("silent! write") -- Try to save the file without showing the default message
  end)

  if success then
  else
    vim.notify("Error: " .. err, vim.log.levels.ERROR) -- Show the error message if it fails
  end
end
