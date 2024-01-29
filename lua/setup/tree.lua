require('nvim-tree').setup({
    filters = {
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = { '*.aux', '*.fdb_latexmk', '*.fls', '*.log', '*.out' },
    },
})

vim.api.nvim_create_autocmd(
    'BufEnter',
    {
        command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
        nested = true,
    }
)
