return {
	"mason-org/mason.nvim",
	lazy = false,
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"neovim/nvim-lspconfig",
	},
	config = function()
		-- import mason and mason_lspconfig
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_enable = true,
			-- servers for mason to install
			ensure_installed = {
				"lua_ls",
				"gopls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"biome",
				"prettier",
				"stylua",
				"isort",
				"pylint",
				"clangd",
				"denols",
			},
		})

		-- mason_lspconfig.setup_handlers({
		--    --default handler
		--    function(server_name)
		--        lspconfig[server_name].setup({
		--            capabilities = capabilities,
		--        })
		--    end,
		--})
	end,
}
