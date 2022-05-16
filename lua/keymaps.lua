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

-- Move text
keymap("v", "<A-j>", ":m .+1<CR>==")
keymap("v", "<A-k>", ":m .-2<CR>==")
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Turn off highlight
keymap("n", "<leader>n", ":noh<CR>")
