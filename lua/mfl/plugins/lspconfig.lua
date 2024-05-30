return {
    'neovim/nvim-lspconfig',

    event = {
        'BufReadPre',
        'BufNewFile'
    },

    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'folke/neodev.nvim'
    },

    config = function()
        local signs = { Error = ' ', Warn = ' ', Hint = '󰠠 ', Info = ' ' }

        for type, icon in pairs(signs) do
            local hl = 'DiagnosticSign' .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
        end

        require('lspconfig')['lua_ls'].setup {
            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } },
                }
            }
        }

    end
}
