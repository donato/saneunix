#!/bin/env bash

## Sometimes necessary (for backtrack 5)
#echo "nameserver 8.8.8.8" > /etc/resolv.conf

#Basic updating
apt-get update
apt-get upgrade

#ftp service
apt-get install lftp

#web stuff
apt-get install apache2 php5 mysql
service apache2 restart

#development stuff
apt-get install git ruby python nodejs vim


# VIM plugins and settings


# setup .bashrc


#setup PHP error reporting 
#    vim /etc/php5/apache2/php.ini
#    vim /etc/php5/apache2/php.ini
#    * search "display_errors" and "error_reporting"
    
    
# come back to this...
#cat ~/.lftp/rc
#set ssl:verify-certificate no

