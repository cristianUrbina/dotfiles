local gset = vim.api.nvim_set_var

gset('$NVIM_TUI_ENABLE_TRUE_COLOR', 1)

vim.cmd('colorscheme one');
gset('onedark_hide_endofbuffer', 1)
gset('onedark_terminal_italics', 1)
gset('onedark_termcolors', 256)
gset('airline_theme', 'onedark')
