return {
	"desdic/agrolens.nvim",
	dependendies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("telescope").load_extension("agrolens")
	end,
}
