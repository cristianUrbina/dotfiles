local gset = vim.api.nvim_set_var
local remap = vim.api.nvim_set_keymap

--local floating = {position = 'floating', [ 'open-action-strategy' ] = 'floating'}
--local presets = {floating = floating}
--gset('coc_explorer_global_presets', presets)
--remap('n','<Leader>e','<Cmd>CocCommand explorer --preset floating<CR>', {noremap = true})
remap('n','<Leader>e','<Cmd>CocCommand explorer<CR>', {noremap = true})

--remap('n','<Leader><Leader>e', '<Cmd>CocCommand explorer<CR>', {})
-- Use preset argument to open it
--nmap <space>ed <Cmd>CocCommand explorer --preset .vim<CR>
--nmap <space>ef <Cmd>CocCommand explorer --preset floating<CR>
--nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
--nmap <space>eb <Cmd>CocCommand explorer --preset buffer<CR>

--remap('n','<Leader><Leader>e','<Cmd>CocCommand explorer --preset floating<CR>', {})
-- List all presets
-- remap('n','<Leader>el', '<Cmd>CocList explPresets<CR>', {})
