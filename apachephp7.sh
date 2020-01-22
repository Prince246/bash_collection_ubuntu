##################################################################
#!/bin/bash

# update the sources
sudo apt-get update
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::updated apt repos"
sleep 2



#insall common software

sudo apt-get -y install software-properties-common

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed common software ubuntu"
sleep 2


# install zip & git
sudo apt-get update
sudo apt-get -y install curl zip git soap
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed Git"
sleep 2


# update the sources
sudo apt-get update
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::updated apt repos"
sleep 2


# add ppa repo
sudo add-apt-repository -y ppa:ondrej/php
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::php repos added"
sleep 2

# update the sources
sudo apt-get update
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::updated apt repos"
sleep 2


# install apache
sudo apt -y install apache2
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed Apache2"
sleep 2





# enable the mods for laravel
sudo a2enmod rewrite headers
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::enabled PHP mods"
sleep 2


# install mysql
sudo apt -y install mysql-server
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed mysql-server"
sleep 2




# restart apache
sudo service apache2 restart
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::restarted apache"
sleep 2


#install composer
sudo apt-get install curl php7.0-cli git
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed composer"
sleep 2


# install php and needed mods
sudo apt-get update
sudo apt install -y php7.0

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::installed PHP7.0"
sleep 2
sudo service apache2 restart
#install sublime text-3


sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Sublime install"
sleep 2

sudo apt-get update



# clean unnecesary files from apt-get
sudo apt-get clean
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::cleaned apt-files"
sleep 2

sudo apt install -y php-mysql php7.0-mysql libapache2-mod-php  php7.0-curl php7.0-gd  php7.0-mbstring php7.0-xml
sudo service apache2 restart

echo ":::::::::::::::::::::::::::: INSTALLATION COMPLETED! ::::::::::::::::::::::::::::::::"
