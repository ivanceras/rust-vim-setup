"pathogen plugin installation
execute pathogen#infect()
syntax on
"filetype plugin indent on

"number toggle
"if you want relative number by default
"set relativenumber
"set to abosulte numerbing
set number
"CTRL-n to toggle numbers
nnoremap <silent> <C-n> :call NumberToggle()<cr>
"set norelativenumber

"autocmd VimEnter * NERDTree

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeFind<CR>

"enable mouse support
set mouse=a

"check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

"convert tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set ai

"global clipboard for copy pasting between terminals
set clipboard=unnamedplus

let g:airline_powerline_fonts = 1
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
set t_Co=256
set noshowmode

" get rid of the `|` in the window splits (signifcant whitespace after \ )
set fillchars+=vert:\ 

"the following lines are appended from the setup to set RUST_SRC_PATH

