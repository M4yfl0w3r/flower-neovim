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

  -- better syntax highlighting
  use 
  {
    "nvim-treesitter/nvim-treesitter", 
    run = ":TSUpdate",
  }

  -- status line 
  use 
  {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  -- file explorer
  use 
  {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    tag = "nightly" 
  }

  -- better commenting (gcc for single line | gc for multiline)
  use 
  {
    "numToStr/Comment.nvim",
    config = function() require('Comment').setup() end
  }

  -- file finder 
  use 
  {
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim"
  }

  -- toggle terminal while editing file
  use 
  {
    "akinsho/toggleterm.nvim", 
    tag = 'v1.*', 
  }

  -- metals - scala language server  
  -- use
  -- {
  --   "scalameta/nvim-metals", 
  --   requires = "nvim-lua/plenary.nvim" 
  -- }

end)

