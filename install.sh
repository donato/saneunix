#!/bin/env bash

## Sometimes necessary (for backtrack 5)
#echo "nameserver 8.8.8.8" > /etc/resolv.conf
mkdir -p ~/local ~/projects

#Basic updating
apt-get -y update
apt-get -y upgrade


#change SSH port, and setup SSH keys

#lockdown other ports




## FTP
    apt-get -y install lftp

    # come back to this...
    #cat ~/.lftp/rc
    #set ssl:verify-certificate no


# We like building things right?
apt-get -y install build-essential

## VIM
    #Add pathogen
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

    #Now setup the .vimrc
    rm -f ~/.vimrc
    echo ":so ~/saneunix/.vimrc" >> ~/.vimrc
    
## TERMINAL    
    # Source in our personal .bashrc 
    echo "source ~/saneunix/.bashrc" >> ~/.bashrc

    
    
## LAMP STACK
    #Apache
    apt-get -y install apache2 
    #mysql
    apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
    #php
    apt-get -y install php5 libapache2-mod-php5 php5-mcrypt
    
    #final setup
    sudo service -y apache2 restart
    #sudo mysql_install_db
    #sudo /usr/bin/mysql_secure_installation

    #setup PHP error reporting 
    #    vim /etc/php5/apache2/php.ini
    #    vim /etc/php5/apache2/php.ini
    #    * search "display_errors" and "error_reporting"
        
    #set up new relic monitoring?

    #set up automysqlbackup?



#Basic updating
apt-get -y update
apt-get -y upgrade
