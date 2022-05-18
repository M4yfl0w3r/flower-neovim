return require('packer').startup(function()

  use "wbthomason/packer.nvim"
  
  -- closing brackets
  use "windwp/nvim-autopairs" 
 
  -- colorscheme
  use 'martinsione/darkplus.nvim'

  -- markdown preview
  use 'davidgranstrom/nvim-markdown-preview'

  -- colorful parenthesis
  use 'p00f/nvim-ts-rainbow'

  -- bufferline
  use 'akinsho/bufferline.nvim'

  -- smooth scrolling
  use 'declancm/cinnamon.nvim'

  -- git decorations
  use 'lewis6991/gitsigns.nvim'

  -- better commenting 
  use "numToStr/Comment.nvim"
  
  -- toggle terminal while editing file
  use "akinsho/toggleterm.nvim"

  -- icons
  use "kyazdani42/nvim-web-devicons"

  -- status line 
  use "nvim-lualine/lualine.nvim"

  -- start screen
  use "goolord/alpha-nvim"

  -- better syntax highlighting
  use 
  {
    "nvim-treesitter/nvim-treesitter", 
    run = ":TSUpdate",
  }

  -- file explorer
  use 
  {
    "kyazdani42/nvim-tree.lua",
    tag = "nightly" 
  }

  -- file finder 
  use 
  {
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim"
  }
  
  -- metals - scala language server  
  -- use
  -- {
  --   "scalameta/nvim-metals", 
  --   requires = "nvim-lua/plenary.nvim" 
  -- }

end)

