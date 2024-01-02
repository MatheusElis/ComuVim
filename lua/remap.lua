local function map(m, k, v, d)
	vim.keymap.set(m, k, v, { silent = true, desc = d })
end

-- Normal Keymaps --

map("n", "<leader>w", "<CMD>w<CR>", "Save File")
map("n", "<leader>q", "<CMD>q<CR>", "Quit Editor")
map("n", "<leader>w", "<CMD>w<CR>", "Save File")
map("n", "<C-s>", "<cmd>w!<cr>", "Force write")
map("n", "<C-q>", "<cmd>q!<cr>", "Force quit")
map("n", "|", "<cmd>vsplit<cr>", "Vertical Split")
map("n", "\\", "<cmd>split<cr>", "Horizontal Split")

-- Manage Buffers
map("n", "<leader>bn", "<CMD>enew<CR>", "New File")
map("n", "<leader>bc", "<cmd>bdelete<CR>", "Close buffer")
map("n", "<leader>bC", "<cmd>bdelete!<CR>", "Force close buffer")
map("n", "<S-Tab>", ":BufferLineCycleNext<CR>", "Next Buffer")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", "Next buffer tab")
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", "Previous buffer tab")
map("n", ">b", "<cmd>BufferLineMoveNext<cr>", "Move buffer tab right")
map("n", "<b", "<cmd>BufferLineMovePrev<cr>", "Move buffer tab left")

-- Stay in indent mode
map("v", "<", "<gv", "unindent line")
map("v", ">", ">gv", "indent line")
