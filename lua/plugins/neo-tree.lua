return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      local function map(m, k, v, d)
        vim.keymap.set(m, k, v, { silent = true, desc = d})
      end
      
      map("n", "<leader>e", "<cmd>Neotree toggle<cr>",  "Toggle Explorer")
      map("n", "<leader>o", "<cmd>Neotree focus<cr>",  "Focus Explorer")
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false
				  }
		    }
      })
    end
}
