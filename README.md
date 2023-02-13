## Features
- File explorer with [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Autocompletion with [Cmp](https://github.com/hrsh7th/nvim-cmp)
- Git integration with [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) and [LazyGit](https://github.com/jesseduffield/lazygit)
- Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting with [Treesiter](https://github.com/nvim-treesitter/nvim-treesitter)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)
- Buffer Line with [Bufferline.nvim](https://github.com/akinsho/bufferline.nvim)


## Installation

Make a backup of your current nvim and shared folder

```
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

Clone the repository
```
git clone https://github.com/MatheusElis/nvim-profile ~/.config/nvim
nvim +PackerSync
```
