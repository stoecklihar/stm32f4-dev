# Arm toolchain repository
arm-toolchain:
  # Package repository
  pkgrepo.managed:
    - ppa: terry.guo/gcc-arm-embedded
    - require_in:
      - pkg: gcc-arm-none-eabi

gcc-arm-none-eabi:
  pkg.installed


