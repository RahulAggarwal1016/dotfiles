local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"dockerfile",
		"graphql",
		"hjson",
		"html",
		"http",
		"javascript",
		"json",
		"json5",
		"jsonc",
		"lua",
		"prisma",
		"python",
		"yaml",
		"vim",
		"typescript",
	},
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	additional_vim_regex_highlighting = false,
})
