export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="~/bin:$PATH"
export GOPATH="/Users/peter/Code/go"
source ~/.homebrew_token
export JAVA_HOME=$(/usr/libexec/java_home)
#source $HOME/.cargo/env
source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/peter/.sdkman"
[[ -s "/Users/peter/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/peter/.sdkman/bin/sdkman-init.sh"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
eval "$(jenv init -)"
