return {
    'williamboman/mason.nvim',

    dependencies = {
        'williamboman/mason-lspconfig.nvim'
    },

    config = function()
        require('mason').setup {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }

        require('mason-lspconfig').setup {
            ensure_installed = { 
                'clangd',
                'cmake',
                'dockerls',
                'glslls',
                'grammarly',
                'lua_ls',
                'marksman',
                'pyright',
                'r_language_server',
                'rust_analyzer'
            },

            automatic_installation = true
        }
    end
}

