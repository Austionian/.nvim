return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- common
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use "EdenEast/nightfox.nvim"
  use 'marko-cerovac/material.nvim'

  -- general dev
  use 'neovim/nvim-lspconfig'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

  -- Rust
  use 'simrat39/rust-tools.nvim'
  use 'rust-lang/rust.vim'

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
end)


