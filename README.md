
## Using vim coding rust
* Install pathogen

```sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

```
* Add this to ~/.vimrc

```sh
execute pathogen#infect()
syntax on
filetype plugin indent on

```


* Install syntax highlighting in rust

```sh

cd ~/.vim/bundle
git clone https://github.com/rust-lang/rust.vim.git

```

* Install vim racer plugin

```sh
cd .vim/bundle/
git clone https://github.com/ebfe/vim-racer

```

* Add this to ~/.vimrc

```
set hidden
let g:racer_cmd = "~/Developer/racer/target/release/racer"
let $RUST_SRC_PATH="~/Developer/rust-1.0.0/src"

```

* Vim number toggle

```sh

cd ~/.vim/bundle
git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git

```
* Install nerdtree for displaying files in a tabs

```sh

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

```
* Add this to ~/.vimrc

```sh
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-N to toggle tree view with CTRL-N
nmap <silent> <c-n> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

```

You can use `<CTRL-ww>`to switch in between windows

vim cheatsheet at http://vim.rtorr.com/

## Install in 1 go for the lazy

```sh
curl -sSf https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/setup.sh | sh

```
