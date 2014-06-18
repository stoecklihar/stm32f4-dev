# Opens all parameters
function x
    for i in $argv
        xdg-open $i 2> /dev/null 
    end
end

alias "l"="ls -lh"
alias vi=vim
alias df="df -h"
alias diff="colordiff -Naur"
alias mkdir="mkdir --parents --verbose"

# Set chromium as the browser for the help
set -x BROWSER chromium

function fish_prompt
    printf '%s ' (date +%H:%M:%S)
    printf '%s%s%s%s%s' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) 

    # Prints the git branch if we are in a git repository.
    printf " %s" (git branch 2> /dev/null | grep "*" | cut --fields=2 --delimiter=" ") 
    echo ' >'
end

# Git shortcut
function g
    if test (count $argv) = 0
        git status
    else
        git $argv
    end
end

# If we dont put this, there is a bug in fish which causes infinite loop when there is only
# a single dot


