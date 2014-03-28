#!/bin/env bash

## Sometimes necessary (for backtrack 5)
#echo "nameserver 8.8.8.8" > /etc/resolv.conf
mkdir ~/local

#Basic updating
apt-get -y update
apt-get -y upgrade

#ftp service
apt-get -y install lftp

#web stuff
apt-get -y install apache2 php5
service -y apache2 restart


# We like building things right?
apt-get -y install build-essential

#Required by phantom-js and maybe some other things
apt-get -y install Freetype

# VIM plugins and settings
#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
#Add some necessary libaries
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/jelera/vim-javascript-syntax.git
git clone https://github.com/othree/javascript-libraries-syntax.vim.git
git clone https://github.com/vim-scripts/SyntaxComplete.git
git clone https://github.com/mbbill/undotree.git

# Source in our personal .bashrc 
echo "source ~/saneunix/.bashrc" >> ~/.bashrc

#setup PHP error reporting 
#    vim /etc/php5/apache2/php.ini
#    vim /etc/php5/apache2/php.ini
#    * search "display_errors" and "error_reporting"
    

# come back to this...
#cat ~/.lftp/rc
#set ssl:verify-certificate no


#Basic updating
apt-get -y update
apt-get -y upgrade
