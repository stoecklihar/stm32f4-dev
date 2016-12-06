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

libtool:
  pkg.installed

packager:
  pip.installed:
    - name: cvra-packager >= 1.0, < 1.1
    - bin_env: /usr/bin/pip3
    - require:
      - pkg: python3-pip
      - pkg: python-pip

uncrustify:
  pkg.removed: []
  git.latest:
    - name: https://github.com/uncrustify/uncrustify
    - rev: uncrustify-0.64
    - target: /usr/src/uncrustify
    - user: root
    - require:
      - pkg: git

  cmd.run:
    - cwd: /usr/src/uncrustify
    - user: root
    - name: |
        mkdir -p build
        cd build
        cmake ..
        make
        make install
    - creates: /usr/local/bin/uncrustify
    - require:
      - pkg: cmake
      - pkg: build-essential

# Install Cpputest from source
cpputest:
  pkg.removed: []
  git.latest:
    - name: git://github.com/cpputest/cpputest.git
    - rev: v3.7.1
    - target: /usr/src/cpputest
    - user: root
    - require:
      - pkg: git

  cmd.run:
    - cwd: /usr/src/cpputest
    - user: root
    - name: |
        mkdir -p cpputest_build
        cd cpputest_build
        autoreconf .. -i
        ../configure
        make
        make install
    - creates: /usr/local/lib/libCppUTest.a
    - require:
        - pkg: libtool
        - pkg: automake
        - pkg: autoconf

include:
  - .arm-toolchain
