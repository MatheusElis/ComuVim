return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      border = "double",
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    })
    vim.api.nvim_create_user_command("FTermOpen", require("FTerm").open, { bang = true })
    vim.keymap.set("n", "<leader>to", require("FTerm").open, { silent = true, desc = "Open Terminal" })
    vim.keymap.set("t", "<leader>tc", require("FTerm").close, { silent = true, desc = "Close Terminal" })
    vim.keymap.set("t", "<leader>te", require("FTerm").exit, { silent = true, desc = "Exit Terminal" })
    vim.keymap.set("t", "<leader>tt", require("FTerm").toggle, { silent = true, desc = "Toggle Terminal " })
    vim.keymap.set("n", "<leader>tt", require("FTerm").toggle, { silent = true, desc = "Toggle Terminal" })
  end,

}
