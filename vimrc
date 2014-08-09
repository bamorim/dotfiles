if $TERM == "xterm-256color" || $TERM == "xterm"
  set t_Co=256
endif

" Identation
set cindent 
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on

" Colors
colorscheme badwolf
syntax enable

" UI
set nu
set cursorline
set wildmenu
set lazyredraw " Do not redraw everytime => Faster macros

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Plugins
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
execute pathogen#infect()

autocmd VimEnter * if argc() == 0 | NERDTree | endif

" Keybindings
nnoremap <space> za

nnoremap j gj
nnoremap k gk

let mapleader=","

" save session
nnoremap <leader>s :mksession<CR>

" Pane movement shortcuts
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j
map <leader>k <C-w>k

" Nerdtree
map <C-t> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>

" xmpfilter
autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F3> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby xmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby imap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_rails = 1

let g:ctrlp_custom_ignore = 'node_modules\|git\|bower_components'

" Close autocompletion scratch/preview on leaving insert and when moving
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
