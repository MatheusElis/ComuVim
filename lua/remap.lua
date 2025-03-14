local function map(m, k, v, d)
	vim.keymap.set(m, k, v, { silent = true, desc = d })
end

-- Normal Keymaps --

map("n", "|", "<cmd>vsplit<cr>", "Vertical Split")
map("n", "\\", "<cmd>split<cr>", "Horizontal Split")

-- Manage Buffers
map("n", "<leader>bn", "<CMD>enew<CR>", "New File")
map("n", "<leader>bc", "<cmd>bdelete<CR>", "Close buffer!")
map("n", "<leader>bC", "<cmd>bdelete!<CR>", "Force close buffer!")
map("n", "<S-Tab>", ":BufferLineCycleNext<CR>", "Next Buffer")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", "Next buffer tab")
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", "Previous buffer tab")
map("n", ">b", "<cmd>BufferLineMoveNext<cr>", "Move buffer tab right")
map("n", "<b", "<cmd>BufferLineMovePrev<cr>", "Move buffer tab left")

-- Stay in indent mode
map("v", "<", "<gv", "unindent line")
map("v", ">", ">gv", "indent line")

-- Navigation
map('n', '<C-h>', '<C-w><C-h>','Move focus to the left window')
map('n', '<C-l>', '<C-w><C-l>','Move focus to the right window')
map('n', '<C-j>', '<C-w><C-j>','Move focus to the lower window')
map('n', '<C-k>', '<C-w><C-k>','Move focus to the upper window')

map("x", "<leader>p", [["_dP"]], 'Paste without change de buffer')

map({"n","v"}, "<leader>y", [["+y]], 'Copy to the clipboard')
map({"n", "v"}, "<leader>d", "\"_d", 'Delete to the void')
