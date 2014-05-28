#!/bin/env bash

## Sometimes necessary (for backtrack 5)
#echo "nameserver 8.8.8.8" > /etc/resolv.conf
mkdir -p ~/local ~/projects

#Basic updating
apt-get -y update
apt-get -y upgrade

#change SSH port, and setup SSH keys

#lockdown other ports

    http://www.liquidweb.com/kb/changing-the-ssh-port/



## FTP
    apt-get -y install lftp

    # come back to this...
    #cat ~/.lftp/rc
    #set ssl:verify-certificate no


# We like building things right?
apt-get -y install build-essential

## YADR for Vim, zch and git 
	cd ~
	git clone https://github.com/DonatoB/yadr-ubuntu.git
	cd yadr-ubuntu
	sh install.sh
    
    
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
