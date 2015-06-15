mkdir -p ~/.vim/autoload ~/.vim/bundle

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

git clone git://github.com/jeffkreeftmeijer/vim-numbertoggle.git

git clone https://github.com/scrooloose/nerdtree.git


curl -LSso /tmp/vimrc https://github.com/ivanceras/rust-vim-setup/vimrc

cat /tmp/vimrc > ~/.vimrc
