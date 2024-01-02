return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local gitsigns = require("gitsigns")
			gitsigns.setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
			})
      vim.keymap.set("n", "<leader>gj", function() require("gitsigns").next_hunk() end,  {silent = true, desc = "Next Git hunk"})
      vim.keymap.set("n", "<leader>gk", function() require("gitsigns").prev_hunk() end,  {silent = true, desc = "Previous Git hunk"})
      vim.keymap.set("n", "<leader>gl", function() require("gitsigns").blame_line() end,  {silent = true, desc = "View Git blame"})
      vim.keymap.set("n", "<leader>gp", function() require("gitsigns").preview_hunk() end,  { silent = true, desc = "Preview Git hunk"})
      vim.keymap.set("n", "<leader>gh", function() require("gitsigns").reset_hunk() end,  { silent = true, desc = "Reset Git hunk"})
      vim.keymap.set("n", "<leader>gr", function() require("gitsigns").reset_buffer() end,  { silent = true, desc = "Reset Git buffer"})
      vim.keymap.set("n", "<leader>gs", function() require("gitsigns").stage_hunk() end,  { silent = true, desc = "Stage Git hunk"})
      vim.keymap.set("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end,  { silent = true, desc = "Unstage Git hunk"})
      vim.keymap.set("n", "<leader>gd", function() require("gitsigns").diffthis() end,  { silent = true, desc = "View Git diff"})
		end,
	},
	{
		"kdheepak/lazygit.nvim",
		config = function()
			require("telescope").load_extension("lazygit")
			vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { silent = true, desc = "Open LazyGit" })
		end,
	},
}
