#Adds Homebrew to path
eval $(/opt/homebrew/bin/brew shellenv)

#Bash Completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
   . /usr/local/share/bash-completion/bash_completion
fi

PATH=/usr/local/opt/terraform@0.11/bin:$PATH:~/bin/confluent/current/bin

#Add a config alias to maintain dotfiles repo
alias config='git --git-dir=/Users/mmcallister/.cfg/ --work-tree=/Users/mmcallister'

#Alias to use rsync instead of scp for big files
alias scp-big='rsync -avz --progress --append-verify'

#Alias ls to default to long format and human readable file sizes
alias ls='ls -lah'

#Alias gl to be my preferred git log summary
alias gl='git log --pretty=oneline'

#Alias gbd to delete local git branchs no longer on remote
alias gbd='git fetch -p && git branch -vv | awk '"'"'/: gone]/{print $1}'"'"' | xargs git branch -d'

# Let the compiler know where OpenSSL is
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

# Do this so that get-aws-keys works
unset DYLD_INSERT_LIBRARIES

# Get colorized listings
export CLICOLOR=1

# Scala home setup for Intellij
export SCALA_HOME=/usr/local/opt/scala/idea

# Confluent home
export CONFLUENT_HOME=~/bin/confluent/current

# If the default docker machine is started then make sure
# the docker environment variables are created

#if [[ $(docker-machine status) != "Stopped" ]]; then 
#	eval $(docker-machine env default); 
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mmcallister/google-cloud-sdk/path.bash.inc' ]; then source '/Users/mmcallister/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mmcallister/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/mmcallister/google-cloud-sdk/completion.bash.inc'; fi
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

#jEnv configuration
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#maven installed directory
export M2_HOME=/usr/local/opt/maven/libexec

#Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#Make homebrew and pyenv work nicely together
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"

#use homebrew version of unzip
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"

#LiquidPrompt
if [ -f /opt/homebrew/share/liquidprompt ]; then
   . /opt/homebrew/share/liquidprompt
fi