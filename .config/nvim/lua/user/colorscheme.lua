local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
else
	vim.g.tokyonight_style = "night"
	vim.g.tokyonight_lualine_bold = true
	vim.g.tokyonight_dark_sidebar = true
	vim.g.tokyonight_dark_float = true
	vim.cmd([[colorscheme tokyonight]])
end

-- vim.cmd("colorscheme darkplus")
