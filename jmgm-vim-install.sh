cd ~
mv .vimrc .vimrc_backup
mv .vim .vim_backup
git clone https://github.com/jmgarciamaleno/vim-config.git
ln -s vim-config/vimrc ~/.vimrc
ln -s vim-config/vim ~/.vim
