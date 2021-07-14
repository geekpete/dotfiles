# add some stuff to the path

if status --is-login
  set -x PATH $PATH ~/bin /usr/local/bin ~/.local/bin ~/Code/go/bin ~/.cargo/bin /opt/gradle/gradle-5.4.1/bin
  # set -x PATH $PATH /usr/local/bin /usr/local/sbin
  
  # if compiling go manually then use this location
  #set -x GOROOT "/usr/local/go"

  # if installing go from apt repo then use this location
  #set -x GOROOT "/usr/lib/go-1.13/"
  set -x GOPATH "/home/peter/Code/go"
  set -x PATH "/usr/local/go/bin" $PATH
  set -x PATH $GOPATH/bin $GOROOT/bin $PATH
  set -x PATH $HOME/.cargo/bin $PATH
  set -x PATH $HOME/.emacs.d/bin $PATH
  #set -x XDG_DATA_DIRS /var/lib/flatpak/exports/share /home/peter/.local/share/flatpak/exports/share $XDG_DATA_DIRS
  set -x GIT_HOME "/home/peter/Code"
  set -x MOZ_USE_XINPUT2 "1"
  set -x DFM_DIR ~/Dotfiles
end


if command -v nvim &> /dev/null
  alias vim="nvim"
end

if command -v bat &> /dev/null
  alias less="bat"
end

if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end
#rvm default
set JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
set -g theme_display_date no
#set -g theme_nerd_fonts yes

# install fisher package manager if not already installed
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/peter/Apps/google-cloud-sdk/path.fish.inc' ]; . '/Users/peter/Apps/google-cloud-sdk/path.fish.inc'; end
#set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
# eval (starship init fish)
eval (/home/peter/.rvm/scripts/rvm)

function fish_prompt
    powerline-shell --shell bare $status
end
