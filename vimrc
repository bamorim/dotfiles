set cindent 
set tabstop=2
set shiftwidth=2
set expandtab
execute pathogen#infect()
syntax on
autocmd vimenter * NERDTree
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
filetype plugin indent on
map <C-t> :NERDTreeToggle<CR>
