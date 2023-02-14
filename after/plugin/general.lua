local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then return end
indent_blankline.setup {
  char = '┊',
  show_trailing_blankline_indent = false,
}

-- Gitsigns
-- See `:help gitsigns.txt`
local ok_git, gitsigns = pcall(require, "gitsigns")
if not ok_git then return end
gitsigns.setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}
