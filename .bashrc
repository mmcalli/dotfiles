#LiquidPrompt
if [ -f /usr/local/share/liquidprompt ]; then
. /usr/local/share/liquidprompt
fi

#Bash Completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
. /usr/local/share/bash-completion/bash_completion
fi

PATH=/usr/local/opt/terraform@0.11/bin:$PATH:~/bin/confluent/current/bin:~/anaconda3/bin:~/bin/utils

#Add a config alias to maintain dotfiles repo
alias config='git --git-dir=/Users/mmcallister/.cfg/ --work-tree=/Users/mmcallister'

#Alias to use rsync instead of scp for big files
alias scp-big='rsync -avz --progress --append-verify'

#Alias ls to default to long format and human readable file sizes
alias ls='ls -lah'

#Alias gl to be my preferred git log summary
alias gl='git log --pretty=oneline'

# Let the compiler know where OpenSSL is
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

# Do this so that get-aws-keys works
unset DYLD_INSERT_LIBRARIES

# Get colorized listings
export CLICOLOR=1

# Scala home setup for Intellij
export SCALA_HOME=/usr/local/opt/scala/idea

# If the default docker machine is started then make sure
# the docker environment variables are created

#if [[ $(docker-machine status) != "Stopped" ]]; then 
#	eval $(docker-machine env default); 
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mmcallister/google-cloud-sdk/path.bash.inc' ]; then source '/Users/mmcallister/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mmcallister/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/mmcallister/google-cloud-sdk/completion.bash.inc'; fi
export PATH=~/.rbenv/bin:${PATH}
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
eval "$(rbenv init -)"
