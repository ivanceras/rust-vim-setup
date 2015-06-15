mkdir -p ~/.vim/autoload ~/.vim/bundle

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git

git clone https://github.com/scrooloose/nerdtree.git

cp ~/.vimrc ~/.vimrc_backup

curl -LSso ~/.vimrc https://raw.githubusercontent.com/ivanceras/rust-vim-setup/master/vimrc
