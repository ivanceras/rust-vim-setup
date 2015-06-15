
# Code rust projects using vim


### Install vim first, if its not already

```sh

sudo apt-get install vim

```

### Install pathogen plugin

```sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

```
* Add this to ~/.vimrc

```sh
execute pathogen#infect()
syntax on
filetype plugin indent on

```


### Install syntax highlighting in rust

```sh

cd ~/.vim/bundle
git clone https://github.com/rust-lang/rust.vim.git

```

### Install vim racer plugin

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

### Vim number toggle

```sh

cd ~/.vim/bundle
git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git

```
### Install nerdtree for displaying files in a tab

```sh

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

```
* Add this to ~/.vimrc

```
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-N to toggle tree view with CTRL-N
nmap <silent> <c-n> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

```

## Controls

```sh

CTRL-t  - Open/Close the files tab
CTRL-n  - Toggle relative / absolute numbering
CTRL-ww - Switch between the files tab and the main window
F2      - Focus cursor to files tab
<Enter> - open the focused files/directory, duh!

```
## Try to `vi`ew some files

```sh

vi main.rs

```
* It should look like this

![](https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/rust-vim.png)


## A helpful vim cheatsheet at
* http://vim.rtorr.com/


## Install in one go for the lazy or those who never have used their vim before
* Make sure you know what you are doing
* This will replace your existing ~/.vimrc, if you have one
* Don't held me responsible

```sh

curl -sSf https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/setup.sh | sh

```
