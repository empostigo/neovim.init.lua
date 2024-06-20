return {
  "rmagatti/auto-session",
  config = function()
    local as = require("auto-session")

    as.setup({
      auto_restore_enabled = false,
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
  end
}
