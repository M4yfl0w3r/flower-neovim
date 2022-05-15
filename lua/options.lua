local options =
{
  mouse = 'a',
  number = true,
  relativenumber = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  hlsearch = true,
  cursorline = true,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

