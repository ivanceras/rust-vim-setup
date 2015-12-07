## vim
sudo apt-get install vim -y
## git
sudo apt-get install git -y
## curl
sudo apt-get install curl -y

## make vim directories
mkdir -p ~/.vim/autoload ~/.vim/bundle

## install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## go to working directory
cd ~/.vim/bundle

## install vim-numbertoggle
git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git

## install nerdtree
git clone https://github.com/scrooloose/nerdtree.git

## install rust.vim plugin
git clone https://github.com/rust-lang/rust.vim.git

## install vim-airline
git clone https://github.com/bling/vim-airline

## install vim-racer
curl -LSso ~/.vim/plugin/racer.vim https://raw.githubusercontent.com/racer-rust/vim-racer/master/plugin/racer.vim

## backup old vimrc if there is
cp ~/.vimrc ~/.vimrc_backup

## copy the vimrc file
curl -LSso ~/.vimrc https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/vimrc

## install rust and cargo
curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh

## install racer
cargo install --git 'https://github.com/phildawes/racer.git'

## checkout rust-master source code
mkdir $HOME/Developer/
cd $HOME/Developer 
git clone -b master https://github.com/rust-lang/rust rust-master

## Append the checkout folder to .vimrc ,since it's hard to set it programmatically in .vimrc (getting the home directory)

echo "let \$RUST_SRC_PATH=`echo $HOME`/Developer/rust-master/src/" > ~/.vimrc


## Install the powerline fonts uses in vim-airline

mkdir -p /tmp/powerline/

cd /tmp/powerline/

git clone https://github.com/powerline/fonts

cd fonts

./install.sh


##Change the Default Profile of terminal font from command line
gconftool-2 --set /apps/gnome-terminal/profiles/Default/use_system_font --type=boolean false

gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "Meslo LG S for Powerline 11"



