local function keymap(mode, key, action)
    local options = { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, key, action, options)
end

-- Set SPACE as a leader key
keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Stay in indent mode after tab
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Move text
keymap('v', '<A-j>', ':m .+1<CR>==')
keymap('v', '<A-k>', ':m .-2<CR>==')
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv")
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv")

-- Turn off the highlight
keymap('n', '<leader>n', ':noh<CR>')

-- Compile a latex file
keymap('n', '<C-w>', ':VimtexCompile<CR>')

-- Switch buffers
keymap('n', '<A-Right>', ':bnext<CR>')
keymap('n', '<A-Left>', ':bprevious<CR>')

-- File explorer
keymap('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Switch between windows
keymap('n', '<C-Up>', '<C-w>k')
keymap('n', '<C-Down>', '<C-w>j')
keymap('n', '<C-Right>', '<C-w>l')
keymap('n', '<C-Left>', '<C-w>h')

-- Close a panel (Ctrl + x)
keymap('n', '<C-x>', ':bd<CR>')

-- Show symbols in a file
keymap('n', '<leader>s', ':SymbolsOutlineOpen<CR>')

-- Show diagnostics
keymap('n', 'gl', '<cmd> lua vim.diagnostic.open_float() <CR>')

-- Telescope - Find files
keymap('n', '<leader>f', '<cmd> Telescope find_files <CR>')

-- Telescope - Live grep
keymap('n', '<leader>g', '<cmd> Telescope live_grep <CR>')

-- Debugger - Add a breakpoint
keymap('n', '<leader>b', '<cmd> DapToggleBreakpoint <CR>')

-- Debugger - Start / Resume debugger 
keymap('n', '<leader>r', '<cmd> DapContinue <CR>')

-- Blame
keymap('n', 'bl', '<cmd> Gitsigns blame_line <CR>')

