" Scripts --------------
source $HOME/.config/nvim/scripts/tinymode.vim

" Options viewable by using :options
" Set options viewable by using :set all
" Or help for individual configs can be accessed :help <name>

syntax on
set nocompatible
set redrawtime=1000
set updatetime=100
set showcmd
set background=dark
set laststatus=2
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set nobackup
set undofile
set undodir=~/.config/nvim/undodir
set undolevels=1000
set relativenumber
set cursorline
set clipboard+=unnamedplus
set incsearch
set hlsearch
set ignorecase
set smartcase
set encoding=UTF-8
set spelllang=en

" Plugins
call plug#begin(stdpath('data') . '/plugged')

"Make your Vim/Neovim as smart as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Formatter
Plug 'prettier/vim-prettier', { 'do': 'sudo yarn install --frozen-lockfile --production' }

" Comment and uncomment lines
Plug 'preservim/nerdcommenter'

" Multicursor
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Move to a matching pattern
Plug 'easymotion/vim-easymotion'

" A light and configurable statusline/tabline plugin for Vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Directory tree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeFind' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons for nerdtree
Plug 'ryanoasis/vim-devicons'

" Visualize undo history tree (in vim undo is not linear)
Plug 'mbbill/undotree'

" Syntax highlighting for languages
Plug 'sheerun/vim-polyglot'

" Fzf is a general-purpose command-line fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Align a paragraph around a character
Plug 'junegunn/vim-easy-align'

" Python code formatter
Plug 'ambv/black', {'for': 'python'}

" Color scheme
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sainnhe/everforest'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Surround plugin
Plug 'tpope/vim-surround'

" Window resizers
" Plug 'simeji/winresizer'
Plug 'camspiers/animate.vim' " This plugin and lens causes problems together
Plug 'camspiers/lens.vim'

" Window keeper
Plug 'moll/vim-bbye'

" React Development
Plug 'mlaursen/vim-react-snippets'

" Git plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'gregsexton/gitv', {'on': ['Gitv']}

" Tex
" Plug 'lervag/vimtex'

" Markdown
" Plug 'godlygeek/tabular'
" Plug 'preservim/vim-markdown'

" Start screen
Plug 'mhinz/vim-startify'

" This plugin is causing bad performance on NERDTree
" Context 
" Plug 'wellle/context.vim'

" Productivity
Plug 'wakatime/vim-wakatime'
Plug 'tweekmonster/startuptime.vim'
Plug 'vim-scripts/LargeFile'

" IDE features
Plug  'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
"Plug 'frazrepo/vim-rainbow'

call plug#end()

" Rainbow config
" au FileType c,cpp,objc,objcpp call rainbow#load()
" au FileType javascript call rainbow#load()
" let g:rainbow_active = 1

" Load theme
source $HOME/.config/nvim/themes/vim-one.vim

source $HOME/.config/nvim/keymappings.vim

source $HOME/.config/nvim/plugins/NERDTree.vim
source $HOME/.config/nvim/plugins/UltiSnips.vim
source $HOME/.config/nvim/plugins/NERDCommenter.vim
source $HOME/.config/nvim/plugins/nerdtree_git_plugin.vim
source $HOME/.config/nvim/plugins/prettier.vim
source $HOME/.config/nvim/plugins/easymotion.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/startify.vim
source $HOME/.config/nvim/plugins/indentLine.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/git_gutter.vim
source $HOME/.config/nvim/plugins/winresizer.vim
source $HOME/.config/nvim/plugins/lens.vim
source $HOME/.config/nvim/plugins/fzf.vim
" source $HOME/.config/nvim/plugins/context.vim

"Multicursor settings
" let g:VM_mouse_mappings = 1
" let g:VM_theme = 'iceblue'
" let g:VM_maps = {}
" let g:VM_maps["Undo"] = 'u'
" let g:VM_maps["Redo"] = '<C-r>'


" Initialize CP stuff
" function! CP_INIT()
"   source $HOME/.config/nvim/scripts/cp.vim
"   echom 'cp.vim sourced!'
" endfunction

" Highlight config
" hi Search cterm=NONE ctermfg=76 ctermbg=25
" highlight CocHighlightText guibg=#767676	  guifg=white
" highlight CocListLine  ctermbg=160  ctermfg=214
" highlight CoErrorHighlight ctermfg=Red  guifg=#ff0000
" highlight LineNr guifg=#767676
" highlight ColorColumn guibg=grey
" hi CursorLine guibg=#878787

let g:LargeFile=5
