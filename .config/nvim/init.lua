local set = vim.opt

set.syntax        = "on"
set.compatible    = false
set.redrawtime    = 1000
set.updatetime    = 100
set.showcmd       = true
set.laststatus    = 2
set.errorbells    = false
set.tabstop       = 2
set.softtabstop   = 2
set.shiftwidth    = 2
set.expandtab     = true
set.smartindent   = true
set.nu            = true
set.wrap          = false
set.backup        = false
set.undodir       = '/home/cristian/.local/share/undodir'
set.undofile      = true
set.undolevels    = 1000
set.number        = true
set.cursorline    = true
set.clipboard     = 'unnamedplus'
set.incsearch     = true
set.hlsearch      = true
set.ignorecase    = true
set.smartcase     = true
set.encoding      = 'UTF-8'
set.spelllang     = en
set.hidden        = true
set.termguicolors = true
set.background    = 'dark'
set.splitbelow    = true
set.splitright    = true
set.colorcolumn   = '80'

package.path      = package.path .. ";./lua/?.lua"

require('vim-plug');
require('keybindings_config');
require('telescope_config');
require('coc-explorer-config');
require('coc-config');
require('themes/gruvbox_config')
require('airline-config');
require('winresizer-config');

require'colorizer'.setup();
-- vim.cmd('source ~/Documents/PersonalProjects/vim-ckb-next/plugin/vim-ckb-next.vim');
