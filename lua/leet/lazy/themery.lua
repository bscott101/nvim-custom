return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "gruvbox", "tokyodark", "onedark" }, -- Example themes
			livePreview = true,
		})
	end,
}
