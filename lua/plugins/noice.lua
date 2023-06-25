return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"rcarriga/nvim-notify",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			popupmenu = {
				backend = "cmp",
			},
			cmdline = {
				backend = "cmp",
				view = "cmdline",
			},
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				command_palette = true,
			},
		})
		require("telescope").load_extension("noice")
	end,
}
