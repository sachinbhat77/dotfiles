require('opts')

vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':Telescope grep_string<CR>', { noremap = true, silent = true })

-- vim.api.nvim_command('inoremap <C-space> <C-x><C-o>')

vim.api.nvim_set_keymap('n', 'f', ":HopChar1<CR>", {})

vim.api.nvim_set_keymap('n', '<leader>r', ":!compiler.sh %<CR>", {})

vim.api.nvim_set_keymap('n', '<leader>T', ":vsplit | terminal<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>n', ":Lexplore!<CR>", {})

vim.api.nvim_set_keymap('n', '<leader>R', ':IronRepl<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader><CR>', '<Plug>(iron-cr)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>c', '<Plug>(iron-clear)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>i', '<Plug>(iron-interrupt)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>l', '<Plug>(iron-send-line)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>q', '<Plug>(iron-exit)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>r', '<Plug>(iron-repeat-cmd)', {silent = true})
vim.api.nvim_set_keymap('n', '<localleader>t', '<Plug>(iron-send-motion)', {silent = true})
vim.api.nvim_set_keymap('v', '<localleader>v', '<Plug>(iron-visual-send)', {silent = true})

vim.api.nvim_command('inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<C-g>u<CR>"')
