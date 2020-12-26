sudo apt update && sudo apt upgrade -y
sleep 3;
sudo apt install neovim gdb clangd clang ranger python3 python3-pip neofetch htop bc git wget axel zsh nodejs npm cmdtest -y && git clone https://github.com/Asbarener/home.git && cp -r ~/home/.config/* ~/.config/ && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc 
sleep 1;
echo "exit"

