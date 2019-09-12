# vimrc

install YCM:
git clone --recursive git://github.com/Valloric/YouCompleteMe
git submodule update --init --recursive
mkdir ~/.vim
mkdir ~/.vim/bundle
cp -r ./YouCompleteMe ~/.vim/bundle/
cd ~/.vim/bundle/YouCompleteMe
./install.py --all

install pathogen.vim（用于自动寻找插件)：

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

vim 设置：

vim ~/.vimrc

insert:

execute pathogen#infect()

syntax on

filetype plugin indent on


升级 vim:
sudo add-apt-repository ppa:jonathonf/vim 


sudo apt update 

sudo apt install vim 

 
sudo add-apt-repository ppa:jonathonf/vim

sudo apt-get update && sudo apt-get upgrade

## 第一步illixllbu安装插件guan工具步 
curl  ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 第二步
vim :PlugInstall

# 第二步
手动安装YouCompleteMe
cd ~/.vim/Pluged 执行  
cd YouCompleteMe
./install.sh --all






