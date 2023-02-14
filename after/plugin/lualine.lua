local ok_lualine, lualine = pcall(require, "lualine")
if not ok_lualine then return end
lualine.setup {
  options = {
    icons_enabled = false,
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
  },
}

