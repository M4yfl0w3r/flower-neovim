return require('packer').startup(function()
  
  use "wbthomason/packer.nvim"
  use "windwp/nvim-autopairs"
  use "rafamadriz/neon"
   
  use 
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

end)

 

