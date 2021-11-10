--- github theme
require('github-theme').setup{
	theme_style = 'dark_default',
	comment_style = "italic",
	colors = { bg = "#000000", bg_statusline = "#999999"}}


	local lsp_installer = require("nvim-lsp-installer")

	-- Register a handler that will be called for all installed servers.
	-- Alternatively, you may also register handlers on specific server instances instead (see example below).
	lsp_installer.on_server_ready(function(server)
		local opts = {}

		-- (optional) Customize the options passed to the server
		-- if server.name == "tsserver" then
		--     opts.root_dir = function() ... end
		-- end

		-- This setup() function is exactly the same as lspconfig's setup function.
		-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
		server:setup(opts)
	end)
