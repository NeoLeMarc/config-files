# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ant debian history-substring-search python lol ssh-agent)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/thunderbird:/home/marcel/bin:/home/marcel/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/jdk/bin:/opt/arduino/current   
namedir () { export $1=$PWD ;  : ~$1 }
DIRSTACKSIZE=15
setopt autopushd pushdminus pushdsilent pushdtohome
alias dh='dirs -v'
export HISTFILE=$HOME/.zshhistory
export HISTSIZE=5000
export SAVEHIST=1000
autoload -U compinit bashcompinit
setopt APPEND_HISTORY EXTENDED_HISTORY HIST_EXPIRE_DUPS_FIRST SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_IGNORE_ALL_DUPS autocd extendedglob histignorealldups histignorespace incappendhistory interactive mailwarning monitor sharehistory zle
compinit
bashcompinit
source ~/.bash_completion.d/compleat_setup

source ~/.profile
#export JAVA_HOME=/opt/jdk/

if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

export GPG_TTY=$(tty)
ssh-add -l
birthday

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marcel/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marcel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marcel/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marcel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export VDPAU_DRIVER=va_gl
alias kubemaster01_unseal="gpg -d ~/dokumente/secret/passwords/scripts/kubemaster01_unseal_vault.sh.gpg | bash"
alias kubemaster01_login="eval \`gpg -d ~/dokumente/secret/passwords/scripts/kubemaster01_login.sh.gpg\`"

export PATH=$PATH:/snap/kubectl/current
