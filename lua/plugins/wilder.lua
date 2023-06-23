return {
	"gelguy/wilder.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local wilder = require("wilder")
		wilder.set_option(
			"renderer",
			wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
				highlights = {
					border = "Normal",
				},
				border = "rounded",
			}))
		)
		wilder.setup({ modes = { ":", "/", "?" } })
	end,
}
