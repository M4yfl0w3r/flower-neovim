return {
    'akinsho/bufferline.nvim',

    config = function()
        require('bufferline').setup {
            options = {
                offsets = {{
                    filetype   = 'NvimTree',
                    text       = 'File explorer',
                }}
            }
        }
    end
}
