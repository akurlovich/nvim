return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'rose-pine/neovim'}
--  use {'kyazdani42/nvim-web-devicons'}
  use {'Mofiqul/vscode.nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate", event = "BufWinEnter", config = "require('treesitter-config')"}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, event = "BufWinEnter", config = "require('lualine-config')"}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', event = "BufWinEnter", config = "require('bufferline-config')"}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', cmd = "NvimTreeToggle", config = "require('nvim-tree-config')"}
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, cmd = "Telescope", config = "require('telescope-config')"}
  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use {'williamboman/nvim-lsp-installer'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'onsails/lspkind-nvim'}
  use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }
--  use {'glepnir/dashboard-nvim', cmd = "Dashboard", config = "require('dashboard-config')"}
  use {"lukas-reineke/indent-blankline.nvim", config = "require('blankline-config')", event = "BufRead"}
  use {'lukas-reineke/format.nvim', config = "require('format-config')", cmd = "Format"}
  use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}
  use {"terrortylor/nvim-comment", config = "require('comment-config')", cmd = "CommentToggle"}
  use { 'tami5/lspsaga.nvim', config = "require('lspsaga-config')" }
  use { 'mhinz/vim-startify'}
  use {"projekt0n/github-nvim-theme"}
  use {'Mofiqul/dracula.nvim'}
  use {'bluz71/vim-nightfly-guicolors'}
  use {"Pocco81/AutoSave.nvim"}
  use {"kdheepak/lazygit.nvim"}
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
--  use { 'numToStr/Comment.nvim', config = "require('comment-config')" }
--  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
--  use { 'sunjon/shade.nvim', config = "require('shade-config')" }
--  use { 'SirVer/ultisnips'}
  use { 'mlaursen/vim-react-snippets'}
end)
