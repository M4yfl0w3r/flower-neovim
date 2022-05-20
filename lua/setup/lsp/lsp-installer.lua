require("nvim-lsp-installer").on_server_ready(function(server)
  local opts =
  {
		on_attach = require("setup.lsp.handlers").on_attach,
		capabilities = require("setup.lsp.handlers").capabilities,
	}

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("setup.lsp.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

	server:setup(opts)
end)

