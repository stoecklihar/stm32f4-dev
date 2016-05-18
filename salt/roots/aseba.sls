aseba:
  pkgrepo.managed:
    - name: deb http://mobots.epfl.ch/data/aseba-build-server/debian trusty origin/master
    - require_in:
      - pkg: aseba

  pkg.installed:
    - skip_verify: True # CI build is not signed
