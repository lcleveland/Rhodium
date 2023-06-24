return {
	"HampusHauffman/block.nvim",
	config = function()
		require("block").setup({
			percent = 0.75,
			depth = 3,
			automatic = true,
		})
	end,
}
