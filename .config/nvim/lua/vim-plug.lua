local Plug = vim.fn['plug#']

vim.call('plug#begin')

--Make your Vim/Neovim as smart as VSCode
Plug('neoclide/coc.nvim', {['branch'] = 'release'})

-- Track the engine.vim
--Plug 'SirVer/ultisnips'
-- Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

-- Formatter
Plug('prettier/vim-prettier', { ['do']= 'sudo yarn install --frozen-lockfile --production' })

-- Comment and uncomment lines
Plug 'preservim/nerdcommenter'

-- Multicursor
-- Plug 'mg979/vim-visual-multi', {'branch': 'master'}

-- Move to a matching pattern
Plug 'easymotion/vim-easymotion'

-- A light and configurable statusline/tabline plugin for Vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

-- Icons
Plug 'ryanoasis/vim-devicons'

-- Visualize undo history tree (in vim undo is not linear)
Plug 'mbbill/undotree'

-- Syntax highlighting for languages
Plug 'sheerun/vim-polyglot'

-- TELESCOPE
Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { ['tag']= '0.1.0' })

-- Align a paragraph around a character
Plug 'junegunn/vim-easy-align'

-- Python code formatter
Plug ('ambv/black', {['for']= 'python'})

-- Color scheme
Plug 'arcticicestudio/nord-vim'
--Plug 'morhetz/gruvbox'
--Plug 'rakr/vim-one'
--Plug 'joshdick/onedark.vim'
--Plug 'altercation/vim-colors-solarized'
--Plug 'patstockwell/vim-monokai-tasty'
--Plug 'sainnhe/everforest'
Plug ('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})

-- Surround plugin
Plug 'tpope/vim-surround'

-- Window resizers
Plug 'simeji/winresizer'
--Plug 'camspiers/animate.vim' -- This plugin and lens causes problems together
Plug 'camspiers/lens.vim'

-- Window keeper
Plug 'moll/vim-bbye'

-- React Development
Plug 'mlaursen/vim-react-snippets'

-- Git plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
-- Plug ('gregsexton/gitv', {on= ['Gitv']})

-- Tex
-- Plug 'lervag/vimtex'

-- Markdown
-- Plug 'godlygeek/tabular'
-- Plug 'preservim/vim-markdown'

-- Start screen
Plug 'mhinz/vim-startify'

-- This plugin is causing bad performance on NERDTree
-- Context 
-- Plug 'wellle/context.vim'

-- Productivity
Plug 'wakatime/vim-wakatime'
Plug 'tweekmonster/startuptime.vim'
Plug 'vim-scripts/LargeFile'

-- IDE features
Plug  'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
-- Plug 'frazrepo/vim-rainbow'
--Plug 'k80w/vim-ckb'
--
Plug 'AndrewRadev/linediff.vim'
vim.call('plug#end')
