#!/usr/bin/env zsh

export LANG=en_US.UTF-8
export EDITOR='vim'

export APP_ENV=dev # symfony apps

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# Git
alias gita='git a'
alias gitb='git b'
alias gitc='git c'
alias gits='git status'
alias gco='git co'
alias gcob='gco -b'
alias gitf='git f'
alias gitl='git l'
alias gitfu='git fixup'
alias gitafu='git add -A && git fixup'
alias gitfuff='git fixup && git puff'
alias gitafuff='git add -A && git fixup && git puff'

# Github CLI
alias view-pr="gh pr view --web"
alias view-repo="gh browse"

# Docker
alias dc="docker-compose"

# XCode
alias simulator-launch="open -a Simulator.app"

## 1Password
alias op-session-token="op signin --raw"

## AWS CLI
alias aws-login="aws sso login"
alias aws-whoami="aws sts get-caller-identity"

# Custom aliases
alias apx=".devcontainer/run"
alias app=".devcontainer/run app"
alias be="docker-compose exec backend"
alias fe="docker-compose exec frontend"
alias cms="docker-compose exec cms"

