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
alias ios-emulator="open -a Simulator.app"

## 1Password
alias op-session-token="op signin --raw"

## AWS CLI
alias aws-login="aws sso login"
alias aws-whoami="aws sts get-caller-identity"

# Custom aliases
alias httpserve="open http://localhost:18000 && python3 -m http.server 18000"
alias pnup="pnpm -r up"

pn() {
  if [[ -f bun.lockb ]]; then
    command bun "$@"
  elif [[ -f pnpm-lock.yaml ]]; then
    command pnpm "$@"
  elif [[ -f yarn.lock ]]; then
    command yarn "$@"
  elif [[ -f package-lock.json ]]; then
    command npm "$@"
  else
    command pnpm "$@"
  fi
}

pni() {
  if [[ -f bun.lockb ]]; then
    command bun install "$@"
  elif [[ -f pnpm-lock.yaml ]]; then
    command pnpm install "$@"
  elif [[ -f yarn.lock ]]; then
    command yarn install "$@"
  elif [[ -f package-lock.json ]]; then
    command npm install "$@"
  else
    command pnpm install "$@"
  fi
}

pnx() {
  if [[ -f bun.lockb ]]; then
    command bunx "$@"
  elif [[ -f pnpm-lock.yaml ]]; then
    command pnpm dlx "$@"
  elif [[ -f yarn.lock ]]; then
    command yarn dlx "$@"
  elif [[ -f package-lock.json ]]; then
    command npx "$@"
  else
    command pnpm dlx "$@"
  fi
}


