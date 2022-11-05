local gset = vim.api.nvim_set_var

--gset('$NVIM_TUI_ENABLE_TRUE_COLOR', 1)

gset('nord_cursor_line_number_background', 1)
gset('nord_bold_vertical_line', 1)
gset('nord_italic', 1)
gset('nord_italic_comments', 1)
gset('nord_bold', 1)

vim.cmd('colorscheme nord');
