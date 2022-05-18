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
keymap("n", "<A-Right>", ":bnext<CR>", opts)
keymap("n", "<A-Left>", ":bprevious<CR>", opts)

