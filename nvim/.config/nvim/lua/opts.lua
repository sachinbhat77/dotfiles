local cmd = vim.cmd
local exec = vim.api.nvim_exec 	-- execute Vimscript
local o=vim.o
local w=vim.w
local b=vim.bo
local opt=vim.opt

opt.mouse = "a"

vim.g.mapleader = " "
vim.b.mapleader = " "
vim.g.maplocalleader = ","

o.background = "dark"
o.termguicolors = false
-- vim.cmd('colorscheme github_dark_default')

cmd[[au BufEnter * set fo-=c fo-=r fo-=o]]

vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

opt.lazyredraw = true     -- faster scrolling

o.laststatus = 2

o.hlsearch = true
o.ignorecase = true
o.showmatch = true
o.smartcase = true

o.clipboard = [[unnamed,unnamedplus]]

o.backup = false
o.writebackup = false
o.hidden = true

o.splitbelow = true
o.splitright = true

o.nrformats = [[bin,hex,alpha]]

opt.autochdir = true

b.autoindent = true
b.expandtab = true
b.shiftwidth = 4
b.smartindent = true
b.softtabstop = 4
b.tabstop = 4

w.wrap = false

o.timeoutlen = 500

-- highlight on yank
cmd([[autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}]])

o.completeopt = [[longest,menuone,noinsert,noselect]]
o.omnifunc = 'v:lua.vim.lsp.omnifunc'

w.list = true
o.listchars = [[tab:▸ ,extends:❯,precedes:❮,nbsp:±,trail:…]]

vim.g['netrw_banner'] = 0
vim.g['netrw_browse_split'] = 3
vim.g['netrw_liststyle'] = 3
vim.g['netrw_winsize'] = 26
vim.g['netrw_altv'] = 2
