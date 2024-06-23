vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set({ "n", "i" }, "<C-q>", "<ESC>:qa<cr>", { desc = "Quit all in normal or insert mode" })
keymap.set({ "n", "i" }, "<C-x>", "<ESC>:q<cr>", { desc = "Quit in normal or insert mode" })

keymap.set("t", "<ESC>", "<C-\\><C-N>", { desc = "Escape from terminal mode" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search hilights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- some keymaps for trigger plugins
keymap.set("n", "<leader>mm", ":Mason<cr>", { desc = "Open Mason dialog" })
keymap.set("n", "<C-l>", ":Lazy<cr>", { desc = "Open Lazy plugin manager UI" })
