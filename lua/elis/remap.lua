local function map(m, k, v, d)
    vim.keymap.set(m, k, v, { silent = true,  desc = d })
end

-- Normal Keymaps --

map("n", "<leader>w", "<CMD>w<CR>", "Save File")
map("n", "<leader>q", "<CMD>q<CR>", "Quit Editor")
map("n", "<leader>w", "<CMD>w<CR>", "Save File")
map("n", "<C-s>", "<cmd>w!<cr>",  "Force write")
map("n", "<C-q>", "<cmd>q!<cr>",  "Force quit")
map("n", "|", "<cmd>vsplit<cr>",  "Vertical Split")
map("n", "\\", "<cmd>split<cr>",  "Horizontal Split")

-- Packer
map("n", "<leader>pc", "<cmd>PackerCompile<cr>",  "Packer Compile")
map("n", "<leader>pi", "<cmd>PackerInstall<cr>",  "Packer Install")
map("n", "<leader>ps", "<cmd>PackerSync<cr>",  "Packer Sync")
map("n", "<leader>pS", "<cmd>PackerStatus<cr>",  "Packer Status")
map("n", "<leader>pu", "<cmd>PackerUpdate<cr>",  "Packer Update")

-- Manage Buffers
map("n", "<leader>bn", "<CMD>enew<CR>", "New File")
map("n", "<leader>bc", "<cmd>bdelete<CR>",  "Close buffer")
map("n", "<leader>bC", "<cmd>bdelete!<CR>",  "Force close buffer")
map("n", "<S-Tab>", ":BufferLineCycleNext<CR>", "Next Buffer")
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>",  "Next buffer tab")
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>",  "Previous buffer tab")
map("n", ">b", "<cmd>BufferLineMoveNext<cr>",  "Move buffer tab right")
map("n", "<b", "<cmd>BufferLineMovePrev<cr>",  "Move buffer tab left")

local ok, comment = pcall(require, "Comment")
if ok then
map("n", "<leader>/", function() comment.toggle.linewise.current() end,  "Comment line")
map("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", "Toggle comment line")
end
-- Comment


local ok_git, gitsigns = pcall(require, "gitsigns")
if ok_git then
-- GitSigns
map("n", "<leader>gj", function() require("gitsigns").next_hunk() end,  "Next Git hunk")
map("n", "<leader>gk", function() require("gitsigns").prev_hunk() end,  "Previous Git hunk")
map("n", "<leader>gl", function() require("gitsigns").blame_line() end,  "View Git blame")
map("n", "<leader>gp", function() require("gitsigns").preview_hunk() end,  "Preview Git hunk")
map("n", "<leader>gh", function() require("gitsigns").reset_hunk() end,  "Reset Git hunk")
map("n", "<leader>gr", function() require("gitsigns").reset_buffer() end,  "Reset Git buffer")
map("n", "<leader>gs", function() require("gitsigns").stage_hunk() end,  "Stage Git hunk")
map("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end,  "Unstage Git hunk")
map("n", "<leader>gd", function() require("gitsigns").diffthis() end,  "View Git diff")
map("n", "<leader>gg", ":LazyGit<CR>", "LazyGit")
end

local ok_neotree, neotree = pcall(require, "neo-tree")
if  ok_neotree then 
-- NeoTree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>",  "Toggle Explorer")
map("n", "<leader>o", "<cmd>Neotree focus<cr>",  "Focus Explorer")
end

local ok_telescope, telescope = pcall(require, "telescope.builtin")
if ok_telescope then
-- Telescope
map("n", "<leader>fw", function() require("telescope.builtin").live_grep() end,  "Search words")
map("n", "<leader>fW", function()
      require("telescope.builtin").live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
      }
    end, "Search words in all files")
map("n", "<leader>gt", function() require("telescope.builtin").git_status() end,  "Git status")
map("n", "<leader>gb", function() require("telescope.builtin").git_branches() end,  "Git branches")
map("n", "<leader>gc", function() require("telescope.builtin").git_commits() end,  "Git commits")
map("n", "<leader>ff", function() require("telescope.builtin").find_files() end,  "Search files")
map("n", "<leader>fF", function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end, "Search all files")
map("n", "<leader>fb", function() require("telescope.builtin").buffers() end,  "Search buffers")
map("n", "<leader>fh", function() require("telescope.builtin").help_tags() end,  "Search help")
map("n", "<leader>fm", function() require("telescope.builtin").marks() end,  "Search marks")
map("n", "<leader>fo", function() require("telescope.builtin").oldfiles() end,  "Search history")
map("n", "<leader>fc", function() require("telescope.builtin").grep_string() end,  "Search for word under cursor")
map("n", "<leader>sb", function() require("telescope.builtin").git_branches() end,  "Git branches")
map("n", "<leader>sh", function() require("telescope.builtin").help_tags() end,  "Search help")
map("n", "<leader>sm", function() require("telescope.builtin").man_pages() end,  "Search man")
map("n", "<leader>sr", function() require("telescope.builtin").registers() end,  "Search registers")
map("n", "<leader>sk", function() require("telescope.builtin").keymaps() end,  "Search keymaps")
map("n", "<leader>sc", function() require("telescope.builtin").commands() end,  "Search commands")
map("n", "<leader>sP", function() require'telescope'.extensions.repo.list{} end, "Search Projects")
end
-- Stay in indent mode
map("v", "<", "<gv",  "unindent line")
map("v", ">", ">gv",  "indent line")

local ok_session,  session = pcall(require, "persisted.nvim")
if ok_session then
map("n", "<leader>SS", "<cmd>SessionStart<CR>", "Session Start")
map("n", "<leader>Ss", "<cmd>SessionStop<CR>", "Session Stop")
map("n", "<leader>Sw", "<cmd>SessionSave<CR>", "Session Save")
map("n", "<leader>Sl", "<cmd>SessionLoad<CR>", "Session Load")
map("n", "<leader>Sd", "<cmd>SessionDelete<CR>", "Session Delete")
end


