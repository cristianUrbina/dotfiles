" Set mapleader to space
let mapleader = " "
" Mappings

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nmap <leader>hk :vsplit ~/.local/share/nvim/hotkeys<cr>
nmap <leader>nt :NERDTreeFind<cr>
nnoremap <leader>p :Prettier<cr>
nmap <leader><leader>u :UndotreeToggle<cr>
nnoremap <Esc> :noh<CR>
nmap <leader><leader>f :Files<cr>
nmap <leader>rg :Rg<cr>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nmap <Leader>s <Plug>(easymotion-overwin-f2)
nmap <leader>w :w<CR>
nmap <leader>qw :q<CR>
nmap <leader>qa :qall<CR>
" tnoremap <Esc> <C-\><C-n>
" Search & Replace maps
noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><left>
noremap ;, :%s:::cgi<Left><Left><Left><left><left>
" Show marks and go to one
nnoremap <leader>m :<C-u>marks<CR>:normal! `
" Show buffers and go to one
nnoremap <leader>b :Buffers<CR>
" Show undolist
nnoremap <leader>u :undolist<CR>:u<Space>
" Show commits
nnoremap <leader>gc :Commits<CR>
" Tagbar config
nmap <F8> :TagbarToggle<CR>

" Folding mappings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

call tinymode#ModeMsg("winsize", "Change window size +/- </>")
call tinymode#EnterMap("winsize", "<C-W>+", "+")
call tinymode#EnterMap("winsize", "<C-W>-", "-")
call tinymode#EnterMap("winsize", "<C-W><", "<")
call tinymode#EnterMap("winsize", "<C-W>>", ">")
call tinymode#Map("winsize", "+", "wincmd +")
call tinymode#Map("winsize", "-", "wincmd -")
call tinymode#Map("winsize", "<", "wincmd <")
call tinymode#Map("winsize", ">", "wincmd >")
