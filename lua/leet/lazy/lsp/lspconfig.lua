return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			vim.api.nvim_create_autocmd("InsertCharPre", {
				group = vim.api.nvim_create_augroup("LspSignatureHelp", { clear = true }),
				callback = function()
					vim.lsp.buf.signature_help({ focus = false, silent = true, max_height = 7, border = "single" })
				end,
			})
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp-signature-help",
	},
}

