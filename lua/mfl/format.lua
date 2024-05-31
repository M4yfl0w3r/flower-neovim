vim.api.nvim_exec([[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.cpp,*.h,*.c,*.cc,*.hpp silent! execute '!clang-format -i %'
        autocmd BufWritePost *.cpp,*.h,*.c,*.cc,*.hpp silent! edit
    augroup END
]], true)

