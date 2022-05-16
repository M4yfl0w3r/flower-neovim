local options =
{
  backup = false,
  swapfile = false,
  hlsearch = true,
  mouse = 'a',
  ignorecase = true,
  smartindent = true,
  showmode = false,
  cursorline = true,
  wrap = true,
  -- signcolumn = "yes",
  expandtab = true,
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

