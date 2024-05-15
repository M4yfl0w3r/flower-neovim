require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {
        on_attach = require("setup.lsp.handlers").on_attach,
		capabilities = require("setup.lsp.handlers").capabilities,
	}

    server:setup(opts)
end
)

