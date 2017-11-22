#!/usr/bin/env bash

HOME=/vagrant

echo "# update system"
sudo apt-get --force-yes -y update
sudo apt-get --force-yes -y upgrade

echo "# install git + unzip"
sudo apt-get --force-yes -y install git unzip libcurl4-openssl-dev libssl-dev

echo "# create directory to save apps"
if ! [ -d $HOME/apps ]; then
#  su vagrant mkdir $HOME/apps
#  sudo su vagrant -c "mkdir $HOME/apps"
  sudo -u vagrant mkdir $HOME/apps
fi

# install sbt
# http://www.scala-sbt.org/0.13/tutorial/Installing-sbt-on-Linux.html
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get -y update
sudo apt-get -y install sbt
