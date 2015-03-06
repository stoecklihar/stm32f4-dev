vim:
  pkg.installed

git:
  pkg.installed

mercurial:
  pkg.installed

# Friendly Interactive SHell
fish:
  pkg.installed

epfl:
  user.present:
    - fullname: Student
    - home: /home/epfl
    - shell: /usr/bin/fish
    - password: $6$SALTsalt$ao3Lv6fUB4uolDKPS2h8s7FB6MGFLJ6aqQ9tUItOOI5qCrYqmXuL0UB00gVlnPaVr8yr8KszmNDfEgmTEuItN/
    - groups:
       - sudo
