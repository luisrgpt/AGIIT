# Defines LAB04 Vagrant environment
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false
  config.vbguest.auto_update = false

# create Management (osmgmt) node
  config.vm.define :osmgmt do | osmgmt_config |
    osmgmt_config.vm.box = "boxcutter/ubuntu1604"
    osmgmt_config.vm.hostname = "osmgmt"
  
    osmgmt_config.vm.network "private_network", ip: "192.168.56.10"
    osmgmt_config.vm.provider "virtualbox" do |vb|
      vb.name = 'osmgmt'
      opts = ['modifyvm', :id, '--natdnshostresolver1', 'on']
      vb.customize opts

      vb.memory = "256"
    end
    osmgmt_config.vm.provision "shell", path: "bootstrap-osmgmt.sh"
  end

end
