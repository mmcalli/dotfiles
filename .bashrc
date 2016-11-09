# ----- Birdhouse Bootstrapper

# Should come first in your /Users/mmcallister/.bashrc so it can be overridden.
if test -L ~/.birdhouse/birdhouse_loader; then
    source ~/.birdhouse/birdhouse_loader "/Users/mmcallister/Projects/birdhouse/lib" "/Users/mmcallister/.bashrc"
fi

# ----- Birdhouse Bootstrapper

if [ -f /usr/local/share/liquidprompt ]; then
. /usr/local/share/liquidprompt
fi

PATH=$PATH:/Users/mmcallister/Software/confluent-3.0.1/bin
alias config='/usr/bin/git --git-dir=/Users/mmcallister/.cfg/ --work-tree=/Users/mmcallister'

# If the default docker machine is started then make sure
# the docker environment variables are created

if [[ $(docker-machine status) != "Stopped" ]]; then 
	eval $(docker-machine env default); 
fi
