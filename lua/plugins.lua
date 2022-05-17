return require('packer').startup(function()
  
  use "wbthomason/packer.nvim"
  
  -- closing brackets
  use "windwp/nvim-autopairs" 
 
  -- colorscheme
  use 'Mofiqul/vscode.nvim'
  
  -- better syntax highlighting
  use 
  {
    "nvim-treesitter/nvim-treesitter", 
    run = ":TSUpdate",
  }

  -- Status line 
  use 
  {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

end)

 

