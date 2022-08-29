#!/bin/zsh

#Install Oh My Zsh
if [ -e ~/.oh-my-zsh ]
then
    echo "Oh My Zsh is already Installed"
    sleep 1
else
    zsh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


#Configure .zshrc
if [[ -e ~/.zshrc && ~/backup_files ]]
then
    cp ~/.zshrc ~/backup_files/.zsh_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.zshrc)" > ~/.zshrc
else
    mkdir -p ~/backup_files
    cp ~/.zshrc ~/backup_files/.zsh_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.zshrc)" > ~/.zshrc
fi


#Configure .vimrc
if [[ -e ~/.vimrc  && ~/backup_files ]]
then
    cp ~/.vimrc ~/backup_files/.vimrc_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.vimrc)" > ~/.vimrc
else
    mkdir -p ~/backup_files
    cp ~/.vimrc ~/backup_files/.vimrc_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.vimrc)" > ~/.vimrc
fi


#Configure Sublime Monokai
if [ -e ~/.vim/colors/sublimemonokai.vim ]
then
    echo "You already have The Best theme ever!!!"
    sleep 3
else
    mkdir -p ~/.vim/colors
    echo "$(curl -fsSL https://raw.githubusercontent.com/erichdongubler/vim-sublime-monokai/master/colors/sublimemonokai.vim)" > ~/.vim/colors/sublimemonokai.vim
fi


#Apply the changes
source ~/.zshrc

echo "                                                                                                                                                
                                    ///***///////*                              
                            #(#***/,,,,,,,,#.,,,,,,*/                           
                           /**,,,,,,,,.(#######,,,,,,,,/                        
                          //,,,,,,,.#####.(/.########%.**                       
                          *,......#####.@@@.,@########%..*                      
                         *,...../######(@@@..@######,@*&.*                      
                        #...########################&.@*,                       
                         ..#############,###########&@@%/                       
                         *..#,##########################&                       
                           ,...,##############(######/##%                       
   PSEGURA-                 ...##################(###(#                        
   PATROCINA                  /#####(**#########((((((.                         
   TU                      *%%%%%%#####/###*#####*                              
   NUEVO                 ,%%%%%%%%#####%#(##(%&                                 
   VIM                  *%%%%%############%%%%%#/(                              
                        %%%%%##(###########%%%%%%%*%&(                          
                       /#%%%%##%#(######(*%@&(%%#%/###(/                        
                       #%%%######((/@@@@@@@@@@*@#%(#,*#&                        
                      ,#%%###(####(@@@@@@@@@@@#@@@@@&(%                         
                       *&#((######/@@@@@@@@@@@&@@@@@#*                          "

