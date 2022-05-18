require('colorscheme')
require('options')
require('keymaps')
require('plugins')

-- default config
require('nvim-autopairs').setup{}
require('nvim-tree').setup{}
require('telescope').setup{}
require('Comment').setup{}
require('gitsigns').setup{}

-- my config
require('markdown_preview_setup')
require('treesitter_setup')
require('bufferline_setup')
require('toggleterm_setup')
require('lualine_setup')
require('cinnamon_setup')
require('alpha_setup')

