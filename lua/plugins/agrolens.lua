return {
	"desdic/agrolens.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("telescope").load_extension("agrolens")
	end,
	event = "BufNew",
}
