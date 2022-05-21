local gps = require("nvim-gps")

require('lualine').setup
{
  sections =
  {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename', { gps.get_location, cond = gps.is_available } },
    lualine_x = {''},
    lualine_y = {''},
    lualine_z = {'progress'}
  },

  options =
  {
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' }
  }
}

