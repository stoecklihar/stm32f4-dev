# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

   config.vm.provider "virtualbox" do |vb|
     # Don't boot with headless mode
     vb.gui = true

     # Max memory = 1024 mb
     vb.memory = 1024

     vb.cpus = 1

   end  
   ## For masterless, mount your salt file root
   config.vm.synced_folder "salt/roots/", "/srv/salt/"

   ## Use all the defaults:
   config.vm.provision :salt do |salt|
       salt.minion_config = "salt/minion"
       salt.run_highstate = true
   end
end



