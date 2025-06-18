-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
--
-- Neo Tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle=true<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- Debugging

vim.keymap.set('n', '<F5>', '<cmd>lua require("dap").continue()<CR>')
vim.keymap.set('n', '<F10>', '<cmd>lua require("dap").step_over()<CR>')
vim.keymap.set('n', '<F11>', '<cmd>lua require("dap").step_into()<CR>')
vim.keymap.set('n', '<F12>', '<cmd>lua require("dap").step_out()<CR>')
vim.keymap.set('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', { desc = 'Toggle [b]reakpoint' })
vim.keymap.set('n', '<leader>dr', '<cmd>lua require("dap").repl.open()<CR>', { desc = 'Open [r]epl' })

vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { desc = 'Code [a]ction' })
