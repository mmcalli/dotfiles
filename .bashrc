# ----- Birdhouse Bootstrapper

# Should come first in your /Users/mmcallister/.bashrc so it can be overridden.
if test -L ~/.birdhouse/birdhouse_loader; then
    source ~/.birdhouse/birdhouse_loader "/Users/mmcallister/Projects/birdhouse/lib" "/Users/mmcallister/.bashrc"
fi

# ----- Birdhouse Bootstrapper

#LiquidPrompt
if [ -f /usr/local/share/liquidprompt ]; then
. /usr/local/share/liquidprompt
fi

#Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

PATH=$PATH:~/bin/confluent/current/bin:~/anaconda3/bin:~/bin/utils

#Add a config alias to maintain dotfiles repo
alias config='git --git-dir=/Users/mmcallister/.cfg/ --work-tree=/Users/mmcallister'

#Alias to use rsync instead of scp for big files
alias scp-big='rsync -avz --progress --append-verify'

#Alias ls to default to long format and human readable file sizes
alias ls='ls -lah'

# Let the compiler know where OpenSSL is
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

# Get colorized listings
export CLICOLOR=1

# If the default docker machine is started then make sure
# the docker environment variables are created

#if [[ $(docker-machine status) != "Stopped" ]]; then 
#	eval $(docker-machine env default); 
#fi
