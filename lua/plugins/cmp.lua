return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		cmp.setup({
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol",
				}),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			}, {
				{ name = "fuzzy_buffer" },
			}),
		})
		cmp.setup.cmdline({ "/", "?" }, {
			formatting = {
				fields = { "abbr" },
			},
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "fuzzy_buffer" },
			},
		})
		cmp.setup.cmdline(":", {
			formatting = {
				fields = { "abbr" },
			},
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "fuzzy_path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
}
