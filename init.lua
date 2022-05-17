require('options')
require('keymaps')
require('plugins')
require('colorscheme')
require('treesitter')
require('markdown_preview')

require('nvim-autopairs').setup{}

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



