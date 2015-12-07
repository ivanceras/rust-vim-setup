
# Use VIM as your RUST IDE


### Install vim first, if its not already

```sh

sudo apt-get install vim
```
If your `vi` did work in your command line, most likely it is the light version of `vi` which is installed by default in ubuntu, and it lacks the most functionality of the real `vi`


You also need to install

* `curl`
* `git`

I assume most of you have already installed it, if not then install it via

```sh

sudo apt-get install curl
sudo apt-get install git
```




### Install pathogen plugin
[Pathogen](https://github.com/tpope/vim-pathogen) is a vim plugin which allows you to easily install other plugins, by just adding files into the `~/.vim/bundle` (There are other alternatives, but pathogen is most commonly used)

```sh

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
* Add this to `~/.vimrc`

```sh
execute pathogen#infect()
syntax on
filetype plugin indent on
```




### Install syntax highlighting for rust

```sh

cd ~/.vim/bundle
git clone https://github.com/rust-lang/rust.vim.git
```



### Install vim racer plugin

[Racer](https://github.com/phildawes/racer) is utility to provide rust code completion for editors, and vim-racer is basically a wrapper for racer to work as a vim plugin

```sh
cd ~/.vim/bundle/

git clone https://github.com/racer-rust/vim-racer

mkdir -p ~/.vim/plugin

cp ~/.vim/bundle/vim-racer/plugin/racer.vim ~/.vim/plugin

```

* Download the source code of version of rust you may be using, say [master branch](https://github.com/rust-lang/rust/)
* Extract the zip file and put in your Development folder ie. `~/Developer`
* Checkout and build racer

```sh

mkdir -p ~/Developer/
cd ~/Developer/
git clone https://github.com/phildawes/racer
cargo build --release
```

* Add this to `~/.vimrc`

```
set hidden
let g:racer_cmd = "$HOME/Developer/racer/target/release/racer"
let $RUST_SRC_PATH="$HOME/Developer/rust-master/src"

```

If you are installing into gVim on Windows, the file to edit will be `~/_vimrc`, and you will need to use escaped-backslash paths, like

```
let g:racer_cmd = "X:\\PathTo\\Rust\\racer\\target\\release\\racer.exe"
let $RUST_SRC_PATH="X:\\PathTo\\Rust\\src\\rustc-1.4.0\\src"
```

### Install Vim number toggle

[vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle) shows line numbers to the code you are editing in vim,
You can toggle the numbers to absolute or relative position with respect to your current cursor location.
This will boost your productivity later, when you orchestrate vim commands such as moving 10 lines below the current cursor location `10j`



```sh

cd ~/.vim/bundle
git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git
```



### Install NERDtree for displaying files in a tab
[NERDTree](https://github.com/scrooloose/nerdtree) is kind of like the left side tabs of most text editors such as `sublime`, `atom`, or `eclipse` where it list down the files in the current directory you are editing from.

```sh

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```
* Add this to `~/.vimrc`

```
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
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
h,j,k,l - navigate the cursor left, down, up, right respectively
i       - insert mode, you can start typing in your code.
<ESC>   - back to default mode, where you can issue commands in vi
:w      - write/save the file, you are editing
:wqa    - save the file, then quit the editor closing vi including the files tab
```
## Some advance commands

```sh

:bp - Open previous file/buffer
:bn - Open next file/buffer
:b <filename-part> - Open the file you are looking for without typing the exact filename
:vsp - vertically split the window
:vsp <filename> - open the file in vertical split
:sp - horizontal split
:sp <filename> - open the file in horizontal split

```
* You don't really have to quit `wq` the editor, whenever you want to go back to the shell to build the project.
A convenient way, is to open a new tab in a terminal via `<CTRL>` `<SHIFT>` `t`
and issue you `cargo build --release` commands from there. That way, you don't loose state of your editor,
i.e. you can undo `u` or redo `<CTRL>` `r` your code changes when needed

## Compile without opening another tab
Alternatively, you can compile your project without opening another terminal instance by issuing the command using `:! <external terminal command>`

```sh
:! cargo run --release
```



## Try to `vi`ew some files

```sh

vi main.rs
```


* It should look something like this

![](https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/rust-vim.png)



## Enable mouse support

If you want to be able to use the mouse to point and click files, move the cursor around.

* Add this to your `~/.vimrc`

```

"enable mouse support
set mouse=a
```

Additionally by default, you can use the arrow keys to navigate the cursor.
However, If you are really serious about using vi and want to maximize your `vi` skills, you should minimize the use of the arrow keys or the mouse.


![Using Mouse](https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/using-mouse.gif)

## A helpful vim cheatsheet at
* http://vim.rtorr.com/


## Automatically reload files when changed

Sometimes some of your files maybe edited outside of your current `vi` session, such other editors/code generators, dropbox sync, git pulls.
You may want to have that content be in your current `vi` session instead.

* Add this to your `~/.vimrc`

```

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime  
```


## Install in one go for the lazy or those who never have used their vim before
* Make sure you know what you are doing
* This will replace your existing `~/.vimrc` and `.vim`, if you have one (No worries for non vim users)
* Don't held me responsible for breaking your vim configuration, your laundry machine and anything that makes you angry.

```sh

sudo apt-get install curl

curl -sSf https://raw.githubusercontent.com/ivanceras/rustupefy/master/setup.sh | sh

```

## Comeback here for changes?

* Update it via

```sh

curl -sSf https://raw.githubusercontent.com/ivanceras/rustupefy/master/update.sh | sh

```

## Comeback here for changes?

* Update it via (same as setup)

```sh

curl -sSf https://raw.githubusercontent.com/ivanceras/rustupefy/master/setup.sh | sh

```

## Uninstall

```sh

curl -sSf https://raw.githubusercontent.com/ivanceras/rustupefy/master/uninstall.sh | sh

```
