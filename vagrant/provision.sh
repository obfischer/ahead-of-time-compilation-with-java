apt-get update
sudo apt-get install software-properties-common

# Siehe https://askubuntu.com/questions/493460/
apt-get -y install python-software-properties
apt-get -y install maven
apt-get -y install emacs23-nox

# https://stackoverflow.com/questions/49507160/
# https://www.linuxuprising.com/2018/04/install-oracle-java-10-in-ubuntu-or.html
add-apt-repository --yes ppa:linuxuprising/java
apt-get update
echo oracle-java10-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get -y install oracle-java10-installer
apt-get -y install oracle-java10-set-default

