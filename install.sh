#!/bin/env bash

## Sometimes necessary (for backtrack 5)
#echo "nameserver 8.8.8.8" > /etc/resolv.conf

#Basic updating
apt-get -y update
apt-get -y upgrade

#ftp service
apt-get -y install lftp

#web stuff
apt-get -y install apache2 php5 mysql
service -y apache2 restart

#development stuff
apt-get -y install git ruby python nodejs vim


# VIM plugins and settings


# setup .bashrc


#setup PHP error reporting 
#    vim /etc/php5/apache2/php.ini
#    vim /etc/php5/apache2/php.ini
#    * search "display_errors" and "error_reporting"
    
    
# come back to this...
#cat ~/.lftp/rc
#set ssl:verify-certificate no

