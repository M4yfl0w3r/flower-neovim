local M = {}

M.setup = function()
  local signs =
  {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" }
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config =
  {
    virtual_text = false,
    signs = { active = signs },
    update_in_insert = true,
    underline = false,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = ""
    }
  }

  vim.diagnostic.config(config)
end

local function lsp_keymaps(bufnr)
  local function keymap(mode, key, action)
    local options = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, mode, key, action, options)
  end

  keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

return M

