# ----- Birdhouse .bashrc Bootstrap

# http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
if [ -f ~/.bashrc ]; then
source ~/.bashrc #bh
fi

# ----- Birdhouse .bashrc Bootstrap


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"
