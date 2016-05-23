virtualbox-guest-dkms:
  pkg.installed
ubuntu-desktop:
  pkg.installed

# Disables modemmanager as it messes with the serial ports
modemmanager:
  pkg.removed
