#!/bin/zsh

#Clone repo and enter in folder
git clone git@github.com:PepeSegura/AutoVIM.git
sleep 2
cd $(pwd)/AutoVIM

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Backup zshrc and vimrc files
mkdir -p ~/backup_files
cp ~/.vimrc ~/backup_files/.vimrc_backup
cp ~/.zshrc ~/backup_files/.zsh_backup

#Copy configurated files to each place
mkdir -p ~/.vim/colors
cp $(pwd)/source/sublimemonokai.vim ~/.vim/colors/
cp $(pwd)/source/.vimrc ~/
cp $(pwd)/source/.zshrc ~/
source ~/.zshrc

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/AutoVIM.sh)"