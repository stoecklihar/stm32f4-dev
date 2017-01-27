# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty32"
    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = 1024
        vb.cpus = 1
        vb.customize ["modifyvm", :id, "--usb", "on"]
        vb.customize ["modifyvm", :id, "--usbehci", "on"]
    end
    # Add a shared folder for Saltstack states
    config.vm.synced_folder "salt/roots/", "/srv/salt/"

    # Install SaltStack dependencies manually as they are not packaged for 32
    # bits (see Saltstack issue #27437).
    config.vm.provision "shell", path: "install_deps.sh"

    config.vm.provision :salt do |salt|
        salt.minion_config = "salt/minion"
        salt.install_type = 'git'
        salt.install_args = '2016.3'
        salt.bootstrap_options = '-F -c /tmp/ -b -P'
        salt.run_highstate = true
        salt.verbose = true
    end
end



