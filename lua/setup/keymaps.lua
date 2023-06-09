local function keymap(mode, key, action)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, key, action, options)
end

-- Set SPACE as leader key
keymap("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Stay in indent mode after tab
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move text (Alt + j/k)
keymap("v", "<A-j>", ":m .+1<CR>==")
keymap("v", "<A-k>", ":m .-2<CR>==")
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Turn off highlight (Space + n)
keymap("n", "<leader>n", ":noh<CR>")

-- Open markdown file preview (Ctrl + w)
keymap("n", "<C-w>", ":MarkdownPreview<CR>")

-- Switch buffers (Alt + Arrows)
keymap("n", "<A-Right>", ":bnext<CR>")
keymap("n", "<A-Left>", ":bprevious<CR>")

-- File explorer (Space + e)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Switch between windows (Ctrl + Arrows)
keymap("n", "<C-Up>", "<C-w>k")
keymap("n", "<C-Down>", "<C-w>j")
keymap("n", "<C-Right>", "<C-w>l")
keymap("n", "<C-Left>", "<C-w>h")

-- Close a window (Ctrl + x)
keymap("n", "<C-x>", ":bd<CR>")

-- Open file finder (Space + f)
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>")

-- Show git changes
keymap("n", "<leader>g", "<cmd>Gitsigns toggle_signs<CR>")
keymap("n", "<C-g>", "<cmd>Gitsigns preview_hunk<CR>")
keymap("n", "<leader>w", "<cmd>Gitsigns blame_line<CR>")

-- Show diagnostics
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>")

-- Show key binds
keymap("n", "<leader>i", "<cmd>WhichKey<CR>")

-- Show diagnostics
keymap("n", "<leader>s", "<cmd>TroubleToggle<CR>")
