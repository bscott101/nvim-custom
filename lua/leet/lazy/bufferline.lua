return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	keys = {
		{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
		{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
		{ "<leader>x", "<Cmd>bd<CR>", desc = "Close tab" },
	},
	opts = {
		options = {
			mode = "tabs",
			offsets = {
				{
					filetype = "neo-tree",
					text = "Nvim Tree",
					separator = true,
					text_align = "left",
				},
			},
			diagnostics = "nvim_lsp",
			separator_style = { "", "" },
			modified_icon = "●",
			show_close_icon = false,
			show_buffer_close_icons = true,
		},
	},
}
