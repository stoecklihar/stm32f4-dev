# Arm toolchain repository
arm-toolchain:
  # Package repository
  pkgrepo.managed:
    - ppa: team-gcc-arm-embedded/ppa
    - require_in:
      - pkg: gcc-arm-embedded

gcc-arm-embedded:
  pkg.installed

dfu-util:
    pkg.installed

