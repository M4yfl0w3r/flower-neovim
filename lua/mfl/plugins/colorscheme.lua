return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,

    config = function()
        require('tokyonight').setup {
            style = 'night',
            styles = {
                functions = {},
                comments  = { italic = true },
                keywords  = { italic = false }
            }
        }

        vim.cmd('colorscheme tokyonight-night')
    end
}

