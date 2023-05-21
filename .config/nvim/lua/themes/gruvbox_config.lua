local gset = vim.api.nvim_set_var

gset('$NVIM_TUI_ENABLE_TRUE_COLOR', 1)

gset('gruvbox_italic', '1')
gset('gruvbox_bold', '1')
gset('gruvbox_underline', '1')
gset('gruvbox_undercurl', '1')
gset('gruvbox_contrast_dark', 'medium')
gset('gruvbox_invert_signs', '1')
gset('gruvbox_improved_warnings', '1')
gset('italicize_strings', '1')

vim.cmd('autocmd vimenter * ++nested colorscheme gruvbox');
