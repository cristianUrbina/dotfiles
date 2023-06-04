local remap = vim.api.nvim_set_keymap

remap('n','<Esc>',':noh<cr>', {noremap = true})
remap('n','<Leader><tab>',':bnext<cr>', {noremap = true})
remap('n','<Leader><S-tab>',':bprevious<cr>', {noremap = true})
remap('n','<Leader>gs',':G<cr>', {noremap = true})
remap('x','<Leader>p','"_dP', {})
remap('n','<Leader>u',':UndotreeToggle<cr>', {})
remap('n','<Leader>e',':CHADopen<cr>', {noremap = true})
remap('n','<Leader>w','<c-w>', {noremap = true})
remap('n','ga','<Plug>(EasyAlign)', {noremap = false})
remap('x','ga','<Plug>(EasyAlign)', {noremap = false})
remap('n','<c-j>','<c-w><c-j>', {noremap = true})
remap('n','<c-k>','<c-w><c-k>', {noremap = true})
remap('n','<c-h>','<c-w><c-h>', {noremap = true})
remap('n','<c-l>','<c-w><c-l>', {noremap = true})
remap('n',';;',':%s:::g<Left><Left><Left>', {noremap = true})
remap('n',';\'',':%s:::gc<Left><Left><Left><Left>', {noremap = true})
remap('n',';,',':%s:::gci<Left><Left><Left><Left><Left>', {noremap = true})
remap('n',']h','<Plug>(GitGutterNextHunk)', {noremap = true})
remap('n','[h','<Plug>(GitGutterPrevHunk)', {noremap = true})

--helllo there
