require('lualine').setup
{
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_x = {''},
    lualine_y = {''},
    lualine_z = {'progress'}
  },

  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
    disabled_filetypes = { 'NvimTree' },
    theme = 'tokyonight'
  }
}

