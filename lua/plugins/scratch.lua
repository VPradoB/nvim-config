return {
  "LintaoAmons/scratch.nvim",
  event = "VeryLazy",
  keys = {
    vim.keymap.set("n", "<M-C-n>", "<cmd>Scratch<cr>"),
    vim.keymap.set("n", "<M-C-o>", "<cmd>ScratchOpen<cr>"),
  },
}
