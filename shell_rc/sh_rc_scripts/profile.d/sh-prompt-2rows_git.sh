#/bin/sh

# sh ps1: 2 rows, with "git-prompt.sh".
# /u2584=▄ /u2580=▀ /u258c=▌ /u2588=█
source ~/.profile.d/git-prompt.sh
PS1='\[\033[0;32m\]▄\[\033[0;32m\][\u@\H \[\033[0;33m\]\w\[\033[0;32m\]]\[\033[0;36m\]$(__git_ps1)\n\[\033[0;32m\]▀\[\033[0;32m\]\$\[\033[0m\] '
