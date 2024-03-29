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

-- Compile latex file
keymap("n", "<C-w>", ":VimtexCompile<CR>")

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

-- Show symbols in file (Space + s)
keymap("n", "<leader>s", ":SymbolsOutlineOpen<CR>")

-- Show diagnostics
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>")

-- Show diagnostics (Space + d)
keymap("n", "<leader>d", "<cmd>TroubleToggle<CR>")

-- Telescope - Find files
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>")

-- Telescope - Live grep
keymap("n", "<leader>g", "<cmd>Telescope live_grep<CR>")

