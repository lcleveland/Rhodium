vim.opt.mouse = ""
vim.opt.laststatus = 0

-- codeium keybinds
vim.keymap.set("i", "<Tab>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })
vim.keymap.set("i", "<S-Tab>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
