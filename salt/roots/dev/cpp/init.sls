# Everything needed to write C/C++ code.

build-essential:
  pkg.installed

clang:
  pkg.installed

cmake:
  pkg.installed

autoconf:
  pkg.installed

automake:
  pkg.installed


# Install Cpputest from source
git://github.com/cpputest/cpputest.git:
  git.latest:
    - rev: v3.7.1
    - target: /usr/src/cpputest
    - user: root
    - require:
      - pkg: git

cpputest:
  cmd.run:
    - cwd: /usr/src/cpputest
    - user: root
    - name: |
        cd cpputest_build
        autoreconf .. -i
        ../configure
        make
        make install
    - creates: /usr/local/lib/libCppUTest.a

include:
  - .arm-toolchain
