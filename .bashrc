#!/bin/bash
source "/Users/dwarner1/idm.bash"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/dwarner1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dwarner1/.sdkman/bin/sdkman-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dwarner1/.sdkman"
[[ -s "/Users/dwarner1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dwarner1/.sdkman/bin/sdkman-init.sh"

alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say DNS flushed'

