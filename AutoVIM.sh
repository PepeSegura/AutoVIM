#!/bin/zsh

#Install Oh My Zsh
if [ -e ~/.oh-my-zsh ]
then
    echo "Oh My Zsh is already Installed"
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

#Backup zshrc and vimrc files
mkdir -p ~/backup_files
cp ~/.vimrc ~/backup_files/.vimrc_backup
cp ~/.zshrc ~/backup_files/.zsh_backup

#Create folder for VIM Themes
mkdir -p ~/.vim/colors

#Sublime Monokai
echo "$(curl -fsSL https://raw.githubusercontent.com/erichdongubler/vim-sublime-monokai/master/colors/sublimemonokai.vim)" > ~/.vim/colors/sublimemonokai.vim

#.VIMRC
echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.vimrc)" > ~/.vimrc

#Apply the zshrc changes
source ~/.zshrc
echo "Abre VIM para ver los cambios 🥰"

