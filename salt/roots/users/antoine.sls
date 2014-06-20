antoine:
  user.present:
    - home: /home/antoine
    - shell: /usr/bin/fish
    - password: $6$SALTsalt$tX2a/lo.ZsRQim9TxYmxohvZKIewMHlP7d28NIlt1luqmnsqJ4oPA/ZLmYoCBGEmf09M0s8C0Xk/x7OaBYo9H.
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

https://github.com/antoinealb/dotfiles:
  git.latest:
    - target: /home/antoine/dotfiles

/home/antoine/.config/fish/config.fish:
  file.symlink:
    - target: /home/antoine/dotfiles/config.fish
    - user: antoine
    - mode: 644

/home/antoine/.gitconfig:
  file.symlink:
    - target: /home/antoine/dotfiles/gitconfig
    - user: antoine
    - mode: 644
