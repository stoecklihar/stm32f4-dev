pierluca:
  user.present:
    - home: /home/pierluca
    - shell: /bin/bash
    - password: $6$SALTsalt$tX2a/lo.ZsRQim9TxYmxohvZKIewMHlP7d28NIlt1luqmnsqJ4oPA/ZLmYoCBGEmf09M0s8C0Xk/x7OaBYo9H.
    - groups:
       - sudo

https://github.com/pierluca/dotfiles:
  git.latest:
    - target: /home/pierluca/dotfiles

/home/pierluca/.vimrc:
  file.symlink:
    - target: /home/pierluca/dotfiles/vimrc
    - user: pierluca
    - mode: 644

