local set = vim.opt

set.syntax         = "on"
set.compatible     = false
set.redrawtime     = 1000
set.updatetime     = 50
set.showcmd        = true
set.laststatus     = 2
set.errorbells     = false
set.tabstop        = 2
set.softtabstop    = 2
set.shiftwidth     = 2
set.expandtab      = true
set.smartindent    = true
set.nu             = true
set.relativenumber = true
set.wrap           = false
set.backup         = false
set.undodir        = '/home/cristian/.local/share/undodir'
set.undofile       = true
set.cursorline     = true
set.clipboard      = 'unnamedplus'
set.incsearch      = true
set.hlsearch       = true
set.ignorecase     = true
set.smartcase      = true
set.encoding       = 'UTF-8'
set.spelllang      = 'en'
set.hidden         = true
set.termguicolors  = true
set.background     = 'dark'
set.splitbelow     = true
set.splitright     = true
set.colorcolumn    = '80'
set.scrolloff      = 8
vim.g.mapleader    = " "

package.path      = package.path .. ";./lua/?.lua"

require('vim-plug');
require('keybindings_config');
require('telescope_config');
require('coc-config');
require('themes/everforest_config')
require('winresizer-config');
require('lualine-config');

require('colorizer').setup();
require("overseer").setup({
  templates = { "builtin", "user.cpp_build" },
})
require("symbols-outline").setup()
require("tabline").setup()
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
