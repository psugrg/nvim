return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		-- It uses formatters from the Mason plugin
		conform.setup({
			formatters_by_ft = {
				javascript = { "biome" },
				typescript = { "biome" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "biome" },
				html = { "biome" },
				json = { "biome" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				cpp = { "clang-format" },
				c = { "clang-format" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 2500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 2500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
