#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get update
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
apt-get -y install python-shade
# sudo apt-get -y dist-upgrade

# Copy special files into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/.bash_aliases /home/vagrant
chown -R vagrant:vagrant /home/vagrant
# Preserve original Ansible configuration files
cp /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg.org
cp /etc/ansible/hosts /etc/ansible/hosts.org

