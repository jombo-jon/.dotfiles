-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    -- Nvim Tree
    use {
    'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icons
        }
    }
 
    -- Telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("nvim-treesitter/nvim-treesitter", {
          run = ":TSUpdate"
      })

    -- Hydra For Help View
    -- use('anuvyklack/hydra.nvim')
    -- use("folke/which-key.nvim")

    -- Common Tool for neovim
    use("tpope/vim-commentary")
    -- use('yggdroot/indentline')
    use('lukas-reineke/indent-blankline.nvim') 

    -- ColorScheme
    --use 'ellisonleao/gruvbox.nvim'
    use("gruvbox-community/gruvbox")

    -- LUA Completion
    use("hrsh7th/nvim-cmp")
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

end)

