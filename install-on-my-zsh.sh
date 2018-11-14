sudo yum -y install zsh
sudo yum -y install wget
sudo chsh -s /bin/zsh
path=$(pwd)
ZSH_CUSTOM=~/.oh-my-zsh/custom
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/Hugo-Gao/Linux-tools/6ba0bdd87a81992c23328583ba4f2f1ab9c26e69/.zshrc
cp -r ~/.oh-my-zsh $path
source ~/.zshrc
