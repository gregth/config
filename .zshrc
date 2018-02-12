# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
EDITOR=vim
editor=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast)

source $ZSH/oh-my-zsh.sh

# mkdir, cd into it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

cdl () {
    cd "$*"
    ls -la
}

alias -s html=vim
alias -s php=vim
alias -s css=vim
alias -s js=vim
alias -s py=vim
alias -s sql=vim
alias -s cpp=vim
alias -s y=vim
alias -s c=vim
alias -s h=vim
alias -s txt=vim
alias -s log=tail

setopt AUTO_PUSHD
setopt BRACE_CCL

bindkey -v
bindkey '^R' history-incremental-search-backward

export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export _JAVA_OPTIONS="-Xmx2g"

setopt shwordsplit
#setopt PROMPT_SUBST
#export PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%#%{$reset_color} '


#schedprompt

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM
# rbenv setup - https://github.com/sstephenson/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias lh="cd /usr/share/nginx/html/"

alias phplog="tail /var/log/apache2/error.log"

alias mylib="lh && cd mylib"
alias wifi="sudo service network-manager restart"
alias fixokular="rm .ICEauthority"
