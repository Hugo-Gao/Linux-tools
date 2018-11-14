yum -y install zsh
yum -y install wget
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/Hugo-Gao/Linux-tools/6ba0bdd87a81992c23328583ba4f2f1ab9c26e69/.zshrc
source ~/.zshrc
