# Remove current configuration and create links to new configs
# Old configuration is backed up.
mv ~/.bashrc ~/.backup_bashrc 2>/dev/null
mv ~/.vimrc ~/.backup_vimrc 2>/dev/null
mv ~/.vim ~/.backup_vim 2>/dev/null
mv ~/.tmux.conf ~/.backup_tmux.conf 2>/dev/null
ln -s $PWD/vimrc ~/.vimrc
tar -xf vim.tar vim
ln -s $PWD/vim ~/.vim
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/tmux.conf ~/.tmux.conf

