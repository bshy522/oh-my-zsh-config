# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime osx npm git-extras brew bower autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#export PATH=/usr/local/sbin/:/usr/local/bin:$PATH
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
#export PATH=~/bin:$PATH
export PATH=$PATH:/usr/local/openresty/nginx/sbin:/usr/local/openresty/bin

### rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### node
export NODE_PATH=/usr/local/lib/node_modules
export NODE_ENV=development
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home

### nvm
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh  # This loads NVM

### grunt
eval "$(grunt --completion=zsh)"

###
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

### android
export ANDROID_HOME=/opt/adt-bundle-mac-x86_64-20140702/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools


#eval "$(fasd --init auto)"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=sublime
alias -s js=sublime
alias -s css=sublime
alias -s less=sublime
alias -s php=sublime
alias -s js=node
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
alias pf-core="cd ~/work/code/core"
#alias node='node --harmony'
alias couchdb='couchdb -b'

alias mongod="mongod -f /usr/local/etc/mongod.conf --fork"
alias phpfpm.start="php-fpm -y /usr/local/etc/php/5.4/php-fpm.conf"
#alias cnpm="npm --registry=http://registry.cnpmjs.org --cache=$HOME/.npm/.cache/cnpm"
alias redis="redis-server /usr/local/etc/redis.conf"

function toggleiTerm() {
     pb='/usr/libexec/PlistBuddy'
     iTerm='/Applications/iTerm.app/Contents/Info.plist'

     echo "Do you wish to hide iTerm in Dock?"
     select ync in "Hide" "Show" "Cancel"; do
         case $ync in
             'Hide' )
                  $pb -c "Add :LSUIElement bool true" $iTerm
                  echo "relaunch iTerm to take effectives"
                  break
                  ;;
             'Show' )
                  $pb -c "Delete :LSUIElement" $iTerm
                  echo "run killall 'iTerm' to exit, and then relaunch it"
                  break
                  ;;
          'Cancel' )
               break
               ;;
         esac
     done
}
