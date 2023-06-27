return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		require("which-key").setup({})

		-- key mapping
		local wk = require("which-key")

		-- lspsaga
		wk.register({
			c = {
				name = "code",
				a = {
					"<cmd>Lspsaga code_action<CR>",
					"Code action",
				},
			},
		}, { prefix = "<leader>", mode = { "n", "v" } })
		wk.register({
			c = {
				o = {
					"<cmd>Lspsaga outline<CR>",
					"Outline",
				},
			},
		}, { prefix = "<leader>" })
		wk.register({
			h = {
				"<cmd>Lspsaga lsp_finder<CR>",
				"Lsp finder",
			},
			r = {
				"<cmd>Lspsaga rename<CR>",
				"Lsp rename in file",
			},
			R = {
				"<cmd>Lspsaga rename ++project<CR>",
				"Lsp rename in project",
			},
			p = {
				"<cmd>Lspsaga peek_definition<CR>",
				"Lsp peek definition",
			},
			d = {
				"<cmd>Lspsaga go_to_definition<CR>",
				"Lsp go to definition",
			},
			t = {
				"<cmd>Lspsaga peek_type_definition<CR>",
				"Lsp peek type definition",
			},
		}, { prefix = "g" })
		wk.register({
			K = {
				"<cmd>Lspsaga hover_doc<CR>",
				"Lsp hover doc",
			},
		})

		-- codeium
		vim.keymap.set("i", "<Tab>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true })
		vim.keymap.set("i", "<S-Tab>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true })
	end,
}
