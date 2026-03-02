return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			-- list of servers for mason to install
			-- NOTE: only LSP servers, formatters and linters should be installed via the `mason-tool-installer` below
			ensure_installed = {
				-- list of servers for mason to install -- use the same name as in `https://github.com/neovim/nvim-lspconfig/tree/master/lsp`
				"svelte",
				"lua_ls",
				"clangd",
				"html",
				"cssls",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- list of formatters and linters
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
				"blade-formatter",
				"markdownlint",
				"cpplint",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
