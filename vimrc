"pathogen plugin installation 
execute pathogen#infect()
syntax on
filetype plugin indent on

"vim-racer plugin
set hidden
let g:racer_cmd = "/home/lee/Developer/racer/target/release/racer"
let $RUST_SRC_PATH="/home/lee/Developer/rust-1.0.0/src"

"number toggle
set relativenumber 
set number
"CTRL-n to toggle numbers
nnoremap <silent> <C-n> :call NumberToggle()<cr>

"autocmd VimEnter * NERDTree

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeFind<CR>

