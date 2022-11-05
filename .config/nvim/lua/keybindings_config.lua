local remap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

remap('n','<Esc>',':noh<cr>', {noremap = true})
remap('n','<Leader><tab>',':bnext<cr>', {noremap = true})
remap('n','<Leader><S-tab>',':bprevious<cr>', {noremap = true})
remap('n','<Leader>ut',':UndotreeToggle<cr>', {})
remap('n','<Leader>w','<c-w>', {noremap = true})
remap('x','ga','<Plug>(EasyAlign)', {noremap = false})
remap('n','ga','<Plug>(EasyAlign)', {noremap = false})
remap('n','<c-j>','<c-w><c-j>', {noremap = true})
remap('n','<c-k>','<c-w><c-k>', {noremap = true})
remap('n','<c-h>','<c-w><c-h>', {noremap = true})
remap('n','<c-l>','<c-w><c-l>', {noremap = true})
remap('n',';;',':%s:::g<Left><Left><Left>', {noremap = true})
remap('n',';\'',':%s:::gc<Left><Left><Left><Left>', {noremap = true})
remap('n',';,',':%s:::gci<Left><Left><Left><Left><Left>', {noremap = true})
