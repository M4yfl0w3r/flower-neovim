require('markdown_preview')
require('colorscheme')
require('treesitter')
require('options')
require('keymaps')
require('plugins')

require('nvim-autopairs').setup{}
require('nvim-tree').setup{}
require('telescope').setup{}
require('Comment').setup{}

require('lualine').setup
{
  sections = 
  {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {''},
    lualine_y = {''},
    lualine_z = {'progress'}
  },
}

require('bufferline').setup
{
  options =
  {
    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
  }
}

