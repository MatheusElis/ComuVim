

return { 
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.5', 
  dependencies = { 
    'nvim-lua/plenary.nvim' 
    },
  config = function()
    local function map(m, k, v, d)
      vim.keymap.set(m, k, v, { silent = true,  desc = d })
    end
    local builtin = require("telescope.builtin")
    map("n", "<leader>fw", function() builtin.live_grep() end,  "Search words")
    map("n", "<leader>fW", function()
      builtin.live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
      }
    end, "Search words in all files")
    map("n", "<leader>gt", function() builtin.git_status() end,  "Git status")
    map("n", "<leader>gb", function() builtin.git_branches() end,  "Git branches")
    map("n", "<leader>gc", function() builtin.git_commits() end,  "Git commits")
    map("n", "<leader>ff", function() builtin.find_files() end,  "Search files")
    map("n", "<leader>fF", function() builtin.find_files { hidden = true, no_ignore = true } end, "Search all files")
    map("n", "<leader>fb", function() builtin.buffers() end,  "Search buffers")
    map("n", "<leader>fh", function() builtin.help_tags() end,  "Search help")
    map("n", "<leader>fm", function() builtin.marks() end,  "Search marks")
    map("n", "<leader>fo", function() builtin.oldfiles() end,  "Search history")
    map("n", "<leader>fc", function() builtin.grep_string() end,  "Search for word under cursor")
    map("n", "<leader>sb", function() builtin.git_branches() end,  "Git branches")
    map("n", "<leader>sh", function() builtin.help_tags() end,  "Search help")
    map("n", "<leader>sm", function() builtin.man_pages() end,  "Search man")
    map("n", "<leader>sr", function() builtin.registers() end,  "Search registers")
    map("n", "<leader>sk", function() builtin.keymaps() end,  "Search keymaps")
    map("n", "<leader>sc", function() builtin.commands() end,  "Search commands")
  end
  }
