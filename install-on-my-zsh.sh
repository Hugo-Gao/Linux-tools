sudo yum -y install git
sudo yum -y install zsh
sudo yum -y install wget
path=$(pwd)
ZSH_CUSTOM=~/.oh-my-zsh/custom
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
rm ~/.zshrc
wget https://raw.githubusercontent.com/Hugo-Gao/Linux-tools/e7af6fa6f3b9c308a21831fb641022a635688576/.zshrc
sudo chsh -s /bin/zsh
