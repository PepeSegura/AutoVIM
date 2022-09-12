#!/bin/zsh

#Install Oh My Zsh
if [ -e ~/.oh-my-zsh ]
then
    echo "Oh My Zsh is already Installed"
    sleep 1
else
    read -r -p "Do you want to install Oh My Zsh? [y/N] " choice
	if [[ "$choice" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		zsh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	else
		sleep 1
	fi
fi


#Configure .zshrc
if [[ -e ~/.zshrc && -e ~/backup_files ]]
then
    cp ~/.zshrc ~/backup_files/.zsh_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.zshrc)" > ~/.zshrc
else
    mkdir -p ~/backup_files
    cp ~/.zshrc ~/backup_files/.zsh_backup
    echo "$(curl -fsSL https://raw.githubusercontent.com/PepeSegura/AutoVIM/master/source/.zshrc)" > ~/.zshrc
fi


#Configure .vimrc
if [[ -e ~/.vimrc  && -e ~/backup_files ]]
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
    sleep 1
else
    
	read -r -p "Do you want to install the Sublime Monokai VIM Theme? [y/N] " choice
	if [[ "$choice" =~ ^([yY][eE][sS]|[yY])$ ]]
	then
		mkdir -p ~/.vim/colors
		echo "$(curl -fsSL https://raw.githubusercontent.com/erichdongubler/vim-sublime-monokai/master/colors/sublimemonokai.vim)" > ~/.vim/colors/sublimemonokai.vim
	else
		sleep 1
	fi
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
