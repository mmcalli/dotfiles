# http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi

# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH


# Added by Toolbox App
export PATH="$PATH:/Users/mmcallister/Library/Application Support/JetBrains/Toolbox/scripts"
eval "$(/opt/homebrew/bin/brew shellenv)"
