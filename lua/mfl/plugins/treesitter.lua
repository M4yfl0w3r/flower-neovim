return {
    'nvim-treesitter/nvim-treesitter',

    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                'c', 
                'cpp', 
                'rust', 
                'lua', 
                'vim', 
                'vimdoc', 
                'query' 
            },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },

            indent = { enable = true }
        }
    end
}

