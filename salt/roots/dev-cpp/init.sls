# Everything needed to write C/C++ code.

build-essential:
  pkg.installed

cmake:
  pkg.installed

libcpputest-dev:
  pkg.installed


# Arm toolchain repository

toolchain:
  pkgrepo.managed:
    - ppa: terry.guo/gcc-arm-embedded

  pkg.latest:
    - name: gcc-arm-none-eabi


