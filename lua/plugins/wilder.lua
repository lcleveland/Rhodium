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
			wilder.popupmenu_renderer({
				highlighter = wilder.basic_highlighter(),
			})
		)
		wilder.setup({ modes = { ":", "/", "?" } })
	end,
}
