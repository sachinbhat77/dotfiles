require'lualine'.setup{
	options = {
		icons_enabled = false,
		theme = 'seoul256',
		section_separators = '', component_separators = '',
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff',
		{'diagnostics', sources={'nvim_lsp', 'coc'}}},
		lualine_c = {'filename'},
		lualine_x = {'filetype'},
		lualine_y = {'filesize'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
}
