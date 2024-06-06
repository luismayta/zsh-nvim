#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export NVIM_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew"
export NVIM_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm"
export NVIM_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay"

# nvim
export NVIM_MESSAGE_DONE="Keep calm and use nvim"
export NVIM_REPO_HTTPS="https://github.com/luismayta/nvimrc.git"

# home
export HOME_CONFIG_PATH="${HOME}/.config"

# nvim
export NVIM_CONFIG_PATH="${HOME_CONFIG_PATH}/nvim"
export NVIM_PACKAGE_NAME="nvim"
export NVIM_ROOT_PATH="${HOME}/.nvim"

[ -z "${EDITOR}" ] && export EDITOR="nvim"