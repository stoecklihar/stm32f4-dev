# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = 1024
        vb.cpus = 1
    end
    # Add a shared folder for Saltstack states
    config.vm.synced_folder "salt/roots/", "/srv/salt/"

    config.vm.provision :salt do |salt|
        salt.minion_config = "salt/minion"
        salt.bootstrap_options = '-F -c /tmp/ -P'
        salt.run_highstate = true
        salt.verbose = true
    end
end



