antoine:
  user.present:
    - home: /home/antoine
    - shell: /bin/bash
    - groups:
       - sudo


https://github.com/antoinealb/dotvim:
  git.latest:
    - target: /home/antoine/.vim
    - submodules: True

/home/antoine/.vimrc:
  file.symlink:
    - target: /home/antoine/.vim/vimrc
    - user: antoine
    - mode: 644

