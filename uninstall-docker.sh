DOCKER_PACKAGES=$(dpkg -l | grep -i 'docker' | awk '{print $2}')
sudo apt-get purge -y $DOCKER_PACKAGES
sudo apt-get autoremove -y --purge $DOCKER_PACKAGES
sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
