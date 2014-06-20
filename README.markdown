# CVRA-dev Virtual Machine

Installing this VM requires :

1. A working internet connection.
2. `vagrant`
3. `virtualbox`
4. `vagrant-vbguest`. This can be installed using `vagrant plugin install vagrant-vbguest`.

## Usage
Simply run `vagrant up` from this folder and vagrant will download the base image and configure it.
This can take some time (up to an hour if internet connection is slow), so you might want to prepare some cofee.

When you are done with the VM, simply run `vm halt` to shutdown it.
Next time you want to use it, `vagrant up` will be much faster because it will just boot the already-configured VM.

## Updating the VM
If you want to update the configuration of the VM simply do :

```sh
vagrant halt # Ensures machine is stopped
git pull # Update config files
vagrant up --provision # Boot and tell Vagrant to apply the new config
```

## De-installing
Running `vagrant destroy` will remove every file Vagrant used for this box.