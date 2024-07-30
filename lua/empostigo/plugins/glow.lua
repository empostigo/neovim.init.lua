return {
  "ellisonleao/glow.nvim",
  config = true,
  opts = {
    vim.keymap.set("n", "<leader>gg", ":Glow<CR>", { desc = "Open markdown file preview" }),
  },
  cmd = "Glow",
}
