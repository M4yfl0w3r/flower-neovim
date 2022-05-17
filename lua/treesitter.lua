require("nvim-treesitter.configs").setup 
{
  ensure_installed = 
  { 
    "c", 
    "lua", 
    "rust",
    "cpp",
    "scala",
    "python",
  },

  highlight = 
  {
    enable = true
  },

  indent = 
  {
    enable = true
  },
}
