return {
    'hrsh7th/nvim-cmp',
 
    event = 'InsertEnter',

    dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-path'
	},

    config = function()
        local cmp = require('cmp')

        cmp.setup {
            sources = cmp.config.sources {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
            },

            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false
            },

            mapping = cmp.mapping.preset.insert {

                ['<CR>']  = cmp.mapping.confirm { select = true },

                ['<Up']   = cmp.mapping.select_prev_item(),

                ['<Down'] = cmp.mapping.select_next_item(),

                ['<Tab>'] = cmp.mapping (
                    function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end
                )
            },

            formatting = {
                format = function(entry, vim_item)
                    vim_item.menu = ({
                        nvim_lsp = '[LSP]',
                        buffer   = '[Buffer]',
                        path     = '[Path]'
                    })[entry.source.name]

                    return vim_item
                end
            }
        }
    end
}

