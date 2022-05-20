local options =
{
  mouse = "a",
  encoding= "UTF-8",
  signcolumn = "yes",

  backup = false,
  swapfile = false,
  showmode = false,
  writebackup = false,
  
  wrap = true,
  number = true,
  hlsearch = true,
  smartcase = true,
  expandtab = true,
  splitright = true,
  splitbelow = true,
  ignorecase = true,
  cursorline = true,
  smartindent = true,
  termguicolors = true,
  relativenumber = true,

  tabstop = 2,
  shiftwidth = 2,
  updatetime = 300,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

