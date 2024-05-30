return {
    'akinsho/bufferline.nvim',

    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    config = function()
        require('bufferline').setup {
            options = {
                offsets = {{
                    filetype = 'NvimTree',
                    text     = 'File explorer',
                    padding  = 1
                }}
            }
        }
    end
}
