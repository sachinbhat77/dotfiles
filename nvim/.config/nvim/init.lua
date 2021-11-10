require('coqs')
require('filetypes')
require('keybindings')
require('lualines')
require('opts')
require('plugins')
require('telescopes')
require('themes')
require('treesitters')
require('lspconfigs')
require('toggleterms')

--- hop
require'hop'.setup()

--- comment
require('Comment').setup()
require('Comment').get_config()

--- autopairs
require('nvim-autopairs').setup{}

--- tabout
require('tabout').setup()

--- surround
require"surround".setup {mappings_style = "sandwich"}

--- whichkey
require("which-key").setup()

--- go
require('go').setup()

--- web devicons
require'nvim-web-devicons'.get_icons()
require("nvim-web-devicons").setup{ default = true;}
