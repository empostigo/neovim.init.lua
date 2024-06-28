return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      vim.keymap.set("n", "<leader>tt", ":ToggleTerm size=16<CR>", { desc = "Open terminal" }),
    },
  },
}
