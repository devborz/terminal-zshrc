# -----------------------------
# Git branch in prompt
# -----------------------------
autoload -Uz vcs_info colors
colors
setopt PROMPT_SUBST

zstyle ':vcs_info:git:*' formats '%F{red}(%b)%f '
zstyle ':vcs_info:git:*' actionformats '%F{red}(%b|%a)%f '

precmd() {
  vcs_info
}

PROMPT='%F{green}%n%f %F{blue}%~%f ${vcs_info_msg_0_}%F{yellow}❯%f '


# -----------------------------
# ls colors
# -----------------------------
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias ll='ls -alG'
alias la='ls -A'
alias l='ls -G'


# -----------------------------
# History
# -----------------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY


# -----------------------------
# Git aliases
# -----------------------------
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gamend='git commit --amend --no-edit'
alias gamendm='git commit --amend'
alias gpf='git push --force-with-lease origin HEAD:$(git branch --show-current)'
alias gresetremote='git fetch && git reset --hard @{u}'
alias gl='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias log='git log --oneline --graph --decorate --all'
alias gup='git fetch origin master && git checkout master && git pull --ff-only origin master && git checkout - && git rebase master'


# -----------------------------
# Navigation aliases
# -----------------------------
alias home='cd ~'
alias desk='cd ~/Desktop'
alias docs='cd ~/Documents'
alias dl='cd ~/Downloads'
alias dev='cd ~/dev'
alias cls='clear'


# -----------------------------
# Quick HTTP server
# -----------------------------
alias serve='python3 -m http.server 8000'


# -----------------------------
# Python aliases
# -----------------------------
alias py='python3'
alias pip='python3 -m pip'
alias venv='python3 -m venv .venv'
alias activate='source .venv/bin/activate'
