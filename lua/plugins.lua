return require('packer').startup(function()

  use "wbthomason/packer.nvim"
  
  -- closing brackets
  use "windwp/nvim-autopairs" 
 
  -- colorscheme
  use 'Mofiqul/vscode.nvim'

  use 'davidgranstrom/nvim-markdown-preview'

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

end)

