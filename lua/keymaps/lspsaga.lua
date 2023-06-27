vim.keymap.set(
	{ "n", "v" },
	"<leader>ca",
	"<cmd>Lspsaga code_action<CR>",
	{ desc = "Lspsaga code action", silent = true }
)
vim.keymap.set("n", "<leader>co", "<cmd>Lspsaga outline<CR>", { desc = "Lspsaga outline", silent = true })
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { desc = "Lspsaga lsp finder", silent = true })
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { desc = "Lspsaga rename", silent = true })
vim.keymap.set("n", "gR", "<cmd>Lspsaga rename ++project<CR>", { desc = "Lspsaga rename in project", silent = true })
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Lspsaga peek definition", silent = true })
vim.keymap.set("n", "gi", "<cmd>Lspsaga go_to_definition<CR>", { desc = "Lspsaga go to definition", silent = true })
vim.keymap.set(
	"n",
	"gt",
	"<cmd>Lspsaga peek_type_definition<CR>",
	{ desc = "Lspsaga peek type definition", silent = true }
)
vim.keymap.set("n", "gd", "<cmd>Lspsaga go_to_definition<CR>", { desc = "Lspsaga go to definition", silent = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Lspsaga hover doc", silent = true })
