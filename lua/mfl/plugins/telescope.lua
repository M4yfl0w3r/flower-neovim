return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope-file-browser.nvim'
    },

    config = function()
        require('telescope').load_extension('file_browser')
    end
}