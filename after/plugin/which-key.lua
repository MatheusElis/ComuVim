local wk = require("which-key")
wk.setup {
  plugins = {
    spelling = { enabled = true },
    presets = { operators = false },
  },
  window = {
    border = "rounded",
    padding = { 2, 2, 2, 2 },
  },
  disable = { filetypes = { "TelescopePrompt" } },
}

local mappings = {
    ["<leader>"] = {
      f = { name = "Fuzzy Finder" },
      p = { name = "Packages" },
      b = { name = "Buffers" },
      g = { name = "Git" },
      s = { name = "Search" },
  },
}


wk.register(mappings)
