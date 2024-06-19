vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search hilights" })

-- -- ---------------------------------------------------
-- -- Lua function to obtain selected text and to open help in new tab
-- function tab_help_selection()
--   -- Save selection
--   local save_pos = vim.fn.getpos("'<")
--   local end_pos = vim.fn.getpos("'>")
--   
--   -- Get selected text
--   local selection = vim.fn.getline(save_pos[2]):sub(save_pos[3], end_pos[3])
--   
--   -- Open help for selected expression in a new tab
--   vim.cmd("tab help " .. selection)
-- end
-- 
-- -- Keymap to call tab_help_selection in visual mode
-- vim.api.nvim_set_keymap('v', '<leader>th', ':<C-u>lua tab_help_selection()<CR>', { noremap = true, silent = true }, { desc = "Open help in new tab for selected text" })
-- -- ---------------------------------------------------

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


