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

        local settings = {
            virtual_text     = false,
            signs            = { active = signs },
            update_in_insert = true,
            underline        = false,
            float = {
                focusable = false,
                style     = 'minimal',
                border    = 'rounded',
                source    = 'always',
                header    = '',
                prefix    = ''
            }
        }

        vim.diagnostic.config(settings)

        require('lspconfig')['lua_ls'].setup {
            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } },
                }
            }
        }

        require('lspconfig')['clangd'].setup {

        }

    end
}
