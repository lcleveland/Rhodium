require("lazy").setup("plugins", {
	install = {
		colorscheme = { "midnight" },
	},
})
vim.cmd([[colorscheme midnight]])
vim.opt.termguicolors = true
