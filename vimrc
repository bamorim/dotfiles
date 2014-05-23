set cindent 
set tabstop=2
set shiftwidth=2
set expandtab
execute pathogen#infect()
syntax on
autocmd VimEnter * if argc() == 0 | NERDTree | endif
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
filetype plugin indent on
map <C-t> :NERDTreeToggle<CR>

autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F3> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby xmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby imap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
