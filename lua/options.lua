local options =
{
  mouse = 'a',
  backup = false,
  swapfile = false,
  hlsearch = true,
  ignorecase = true,
  termguicolors = true,
  smartcase = true,
  smartindent = true,
  showmode = false,
  cursorline = true,
  wrap = true,
  expandtab = true,
  updatetime = 300,
  number = true,
  tabstop = 2,
  shiftwidth = 2,
  writebackup = false,
  splitright = true,
  splitbelow = true,
  relativenumber = true,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

