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

" NerdTreePreview :D

nmap <leader>p :call NerdTreePreview()<CR>
nmap <leader>P :call NerdPreviewToggle()<CR>


let g:nerd_preview_enabled = 0
let g:preview_last_buffer  = 0

function! NerdTreePreview()
  " Only on nerdtree window
  if (&ft ==# 'nerdtree')
    " Get filename
    let l:filename = substitute(getline("."), "^\\s\\+\\|\\s\\+$","","g")

    " Preview if it is not a folder
    let l:lastchar = strpart(l:filename, strlen(l:filename) - 1, 1)
    if (l:lastchar != "/" && strpart(l:filename, 0 ,2) != "..")

      let l:store_buffer_to_close = 1
      if (bufnr(l:filename) > 0)
        " Don't close if the buffer is already open
        let l:store_buffer_to_close = 0
      endif

      " Do preview
      execute "normal go"

      " Close previews buffer
      if (g:preview_last_buffer > 0)
        execute "bwipeout " . g:preview_last_buffer
        let g:preview_last_buffer = 0
      endif

      " Set last buffer to close it later
      if (l:store_buffer_to_close)
        let g:preview_last_buffer = bufnr(l:filename)
      endif
    endif
  elseif (g:preview_last_buffer > 0)
    " Close last previewed buffer
    let g:preview_last_buffer = 0
  endif
endfunction

function! NerdPreviewToggle()
  if (g:nerd_preview_enabled)
    let g:nerd_preview_enabled = 0
    augroup nerdpreview
      autocmd!
      augroup END
  else
    let g:nerd_preview_enabled = 1
    augroup nerdpreview
      autocmd!
      autocmd CursorMoved * nested call NerdTreePreview()
    augroup END
  endif
endfunction
