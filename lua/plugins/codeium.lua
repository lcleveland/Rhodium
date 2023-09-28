return {
	"Exafunction/codeium.vim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		vim.g.codeium_disable_bindings = 1
	end,
}
