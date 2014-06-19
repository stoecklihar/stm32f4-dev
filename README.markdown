# CVRA-dev Virtual Machine

Installing this VM requires :
1. A working internet connection.
2. `vagrant`
3. `virtualbox`

## Installing guest additions.
This is the best method :

```sh
vagrant plugin install vagrant-vbguest
```

## Lauching everything

```sh
vagrant up
```

## Updating software config

```sh
git pull
vagrant up --provision
```
