vim:
  pkg.installed

git:
  pkg.installed

mercurial:
  pkg.installed

# Friendly Interactive SHell
fish:
  pkg.installed

libusb-1.0-0-dev:
  pkg.installed

# Disable automated upgrade from one Ubuntu to another (e.g. 14.04 -> 16.04)
/etc/update-manager/release-upgrades:
    file.managed:
        - source: salt://etc/release-upgrades

