require("lazy").setup("plugins", {
	install = {
		colorscheme = { "midnight" },
		checker = {
			enabled = true,
			concurrency = 5,
		},
	},
})
vim.cmd([[colorscheme midnight]])
vim.opt.termguicolors = true
