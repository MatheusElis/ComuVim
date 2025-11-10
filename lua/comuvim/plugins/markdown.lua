return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      local function map(m, k, v, d)
        vim.keymap.set(m, k, v, { silent = true, desc = d })
      end
      map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", "Markdown Preview Toggle")
    end,
    ft = { "markdown" },
  },
}
