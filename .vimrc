" Syntax highlighting
syntax on

"Font 
set guifont=DroidSansMono\ Nerd\ Font\ 11

" Set FZF Default to Ripgrep (must install ripgrep)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --no-ignore-vcs'

" Options viewable by using :options
" Set options viewable by using :set all
" Or help for individual configs can be accessed :help <name>
set nocompatible
set redrawtime=10000
set showcmd
set background=dark
set laststatus=2
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set nobackup
set undodir=~/.vim/undordir
set undofile 
set incsearch
set relativenumber
set cursorline
set clipboard+=unnamedplus
" Column set to column 100
set colorcolumn=100
set hlsearch

" save undo trees in files
set undofile
set undodir=~/.vim/undo

" number of undo saved
set undolevels=10000 

" Column color set to grey
highlight ColorColumn ctermbg=1

" Plugins
call plug#begin('~/.vim/plugged')

" Make your Vim/Neovim as smart as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Comment and uncomment lines
Plug 'preservim/nerdcommenter'

" Multicursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Move to a matching pattern
Plug 'easymotion/vim-easymotion'

" A light and configurable statusline/tabline plugin for Vim
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Directory tree
Plug 'preservim/nerdtree'

" Syntax highlighitn for nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" Icons for nerdtree
Plug 'ryanoasis/vim-devicons'

" Visualize undo history tree (in vim undo is not linear)
Plug 'mbbill/undotree'

" Syntax highlighting for languages
Plug 'sheerun/vim-polyglot'

" Fzf is a general-purpose command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Python code formatter
Plug 'ambv/black'

" Gruvbox color theme
Plug 'morhetz/gruvbox'

" Everforest color scheme
Plug 'sainnhe/everforest'

" Vim-monokai-tasty color theme
Plug 'patstockwell/vim-monokai-tasty'

" Surround pluggin
Plug 'tpope/vim-surround'

" Color picker for web development
Plug 'KabbAmine/vCoolor.vim'

" Color name highlighter
Plug 'ap/vim-css-color'

" Window resizer
Plug 'simeji/winresizer'

" Window keeper 
Plug 'moll/vim-bbye'

" React Development
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mlaursen/vim-react-snippets'

"Tmux airline
Plug 'edkolev/tmuxline.vim'

" Git plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Tex 
Plug 'lervag/vimtex'

" 
Plug  'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" Disable polyglot to use vim-jsx-pretty instead
let g:polyglot_disabled = ['jsx']
" Use colorful style
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Snippets config
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<leader>x"
"let g:UltiSnipsJumpForwardTrigger="<leader>b"
"let g:UltiSnipsJumpBackwardTrigger="<leader>z"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Airline config
"Smarter tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '◤'
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'



" Airline theme config
"let g:airline_theme='onehalfdark'
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = '1'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
"let g:airline_theme='kalisi'
"let g:airline_theme='badwolf'
"let g:airline_theme='dark'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


"NerdTree config
let NERDTreeQuitOnOpen=1
"let  g:NERDTreeWinSize=20
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Set mapleader to space
let mapleader = " "
" Maps
nmap <leader>hk :vsplit ~/.vim/hotkeys<cr>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>nt :NERDTreeFind<cr>
nmap <leader>t :NERDTree<cr>
nmap <leader><leader>p :Prettier<cr>
nmap <leader><leader>u :UndotreeToggle<cr>
nnoremap <Esc> :noh<CR>
" Files (runs $FZF_DEFAULT_COMMAND if defined)
nmap <leader><leader>f :Files<cr>
"nmap <leader><leader><leader>g :GoMetaLinter<cr>
nnoremap <C-p> :GFiles<CR>
"nnoremap <leader><leader>c :call NERDComment(0,"toggle")<CR>
"vnoremap <leader><leader>c :call NERDComment(0,"toggle")<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
"Easymotion config
nmap <leader>s <Plug>(easymotion-s2)
"Some custom shortcuts
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" Show marks and go to one
nnoremap <leader>m :<C-u>marks<CR>:normal! `

" Show buffers and go to one
nnoremap <leader><leader>b :ls<CR>:b<Space>

" show undolist
nnoremap <leader>u :undolist<CR>:u<Space>

" Toggle paste mode
"set pastetoggle=<leader><leader>i

" Folding mappings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

"nmap <Alt>w :buffer
"Color picker config
let g:vcoolor_map = '<c-c>'


let g:LargeFile = 5


" Search & Replace maps

noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>
noremap ;, :%s:::cgi<Left><Left><Left><Left>

" NERDCommenter settings
filetype plugin on
"create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
" let g:NERDToggleCheckAllLines = 1

"Multicursor settings
" let g:VM_mouse_mappings = 1
" let g:VM_theme = 'iceblue'
" let g:VM_maps = {}
" let g:VM_maps["Undo"] = 'u'
" let g:VM_maps["Redo"] = '<C-r>'

""""""""""""""""""""""""coc nvim settings start""""""""""""""""""""""""

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  "set signcolumn=number
  set signcolumn=yes
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"
" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

""  custom coc settings

"let g:coc_snippet_next = ''
"let g:coc_snippet_prev = ''
"inoremap <expr> <c-j>
   "\ pumvisible() ? "\<c-n>" :
   "\ coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetNext', [])<cr>" :
   "\ "\<c-j>"
"inoremap <expr> <c-k>
   "\ pumvisible() ? "\<c-p>" :
   "\ coc#jumpable() ? "\<c-r>=coc#rpc#request('snippetPrev', [])<cr>" :
   "\ "\<c-k>"

autocmd ColorScheme * highlight CocHighlightText  ctermbg=244   ctermfg=white    guifg=#FF0000

""""""""""""""""""""""""coc nvim settings end""""""""""""""""""""""""

" Set the prettier CLI executable path
let g:prettier#exec_cmd_path = "~/.vim/plugged/vim-prettier/node_modules/prettier"
let g:prettier#config#config_precedence = 'file-override'

" Max line length that prettier will wrap on: a number or 'auto'
let g:prettier#config#print_width = 100

" number of spaces per indentation level
let g:prettier#config#tab_width = 2
"let g:prettier#config#tab_width = 4

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
"let g:prettier#config#semi = 'false'
"let g:prettier#config#semi = 'true'

" single quotes over double quotes
"let g:prettier#config#single_quote = 'true'

" none|es5|all
"let g:prettier#config#trailing_comma = 'none'

let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_hls_cursor = 'aqua'
"let g:gruvbox_number_column = 'gray'
"let g:gruvbox_sign_column = 'gray'
let g:gruvbox_transparent_bg = '1'
let g:gruvbox_italicize_strings = '1'
"let g:gruvbox_improved_strings = '1'
let g:gruvbox_improved_warnings = '1'

" Colorscheme (For gruvbox $TERM env var needs to be xterm-256color)
autocmd vimenter * ++nested colorscheme gruvbox

" Important!!
"if has('termguicolors')
  "set termguicolors
"endif

"let g:everforest_background = 'high'
""let g:everforest_transparent_background = 1
"let g:everforest_enable_italic = 1
"let g:everforest_disable_italic_comment = 1
"let g:everforest_cursor = 'green' " Only works in GUI clients
"let g:everforest_ui_contrast = 'high'
"let g:everforest_diagnostic_text_highlight = 1
"let g:everforest_diagnostic_line_highlight = 1
"let g:everforest_current_word = 'underline'
"let g:everforest_better_performance = 1

"colorscheme everforest

"hi Visual  guifg=#000000 guibg=#16CD16 gui=none

