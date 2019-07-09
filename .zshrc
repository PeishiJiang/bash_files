# Path to your oh-my-zsh installation.
export ZSH=/Users/Ben1897/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="peishi"
# ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting history-substring-search brew tmux terminal z)

# User configuration

# Other paths
export ESMF_DIR=/Users/Ben1897/Documents/research/code/esmp.ESMF_6_3_0rp1_ESMP_01/esmf
export SQLITE=/Users/Ben1897/sqlite
export MF2005=/Users/Ben1897/Documents/research/code/mf2005v1_11_00/src
export GEOS_DIR=/usr/local/Cellar/geos/3.4.2/
export PYTHONPATH=${PYTHONPATH}:/Users/Ben1897/Documents/research/code/esmp.ESMF_6_3_0rp1_ESMP_01:/Users/Ben1897/Documents/research/code/bmi-flask:/Users/Ben1897/Documents/research/code/self_lib:/Users/Ben1897/Documents/research/code/info/:/Users/Ben1897/Documents/research/code/tigramite-3.0-beta:/Users/Ben1897/Documents/research/code/infomodel
export ESMFMKFILE=${ESMF_DIR}/lib/libO/Darwin.gfortran.64.mpiuni.default/esmf.mk

# Latex and sqlite path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"
export PATH="/usr/local/sbin:$PATH:$SQLITE:$MF2005"

# Use ruby installed by Homebrew
#export PATH="/usr/local/opt/ruby/bin:$PATH"

# tmuxinator configuration
export EDITOR='emacs --no-window-system'
if [[ -a ~/.localrc ]]; then
    source ~/.bin/tmuxinator.zsh
fi

# paths for GEOS
export GEOS_DIR=/usr/local

# path for virtualenvwrapper
# and start it
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Ben1897/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Ben1897/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Ben1897/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Ben1897/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# conda deactivate
# <<< conda init <<<

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Alias for emacs
alias e='emacs --no-window-system'

# Alias for tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tk='tmux kill-session'
alias mux='tmuxinator'
alias mi='tmuxinator start info'
alias ml='tmuxinator start leojupyter'
alias mvi='tmuxinator start vimtmux'
alias mlatex='tmuxinator start paperlatex'
alias mpractice='tmuxinator start vimpractice'

# Other alias
alias rispotlight="sudo mdutil -i on /"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias ssh_aws='ssh -i "peishi_aws.pem" ec2-user@ec2-52-32-4-28.us-west-2.compute.amazonaws.com'
alias leoipython='ssh -N -f -L localhost:8888:localhost:8888 pjiang6@leo.cee.illinois.edu'
alias rmi='rm -i'
alias gw='cd ~/Documents/research/applications/scripts/'
alias gd='cd ~/Documents/research/data/'

# Start the geosci virtual environment
# workon geosci
