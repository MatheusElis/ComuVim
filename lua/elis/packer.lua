-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end


return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' }, { "kdheepak/lazygit.nvim" } },
            config = function()
                require("telescope").load_extension("lazygit")
            end
        }
        use({
            'shaunsingh/nord.nvim',
            config = function()
                vim.cmd("colorscheme nord")
            end
        })


        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


        use('nvim-treesitter/playground')


        use { -- LSP Configuration & Plugins
            'neovim/nvim-lspconfig',
            requires = {
                -- Automatically install LSPs to stdpath for neovim
                'williamboman/mason.nvim',
                'williamboman/mason-lspconfig.nvim',

                -- Useful status updates for LSP
                'j-hui/fidget.nvim',

                -- Additional lua configuration, makes nvim stuff amazing
                'folke/neodev.nvim',
            },
        }
        use('kdheepak/lazygit.nvim')

        use { -- Autocompletion
            'hrsh7th/nvim-cmp',
            requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
        }

        -- Git related plugins
        use 'tpope/vim-fugitive'
        use 'tpope/vim-rhubarb'
        use 'lewis6991/gitsigns.nvim'

        use 'nvim-lualine/lualine.nvim' -- Fancier statusline
        use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
        use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
        use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
            }
        }

        use {
            "folke/which-key.nvim",
        }
        if is_bootstrap then
            require('packer').sync()
        end
    end)

-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
