#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export NVIM_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew"
export NVIM_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm"
export NVIM_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay"

# nvchad
export NVCHAD_PACKAGE_NAME="nvchad"
export NVCHAD_REPOSITORY_URL="https://github.com/NvChad/NvChad"

# nvim
export NVIM_MESSAGE_DONE="Keep calm and use nvim"
export NVIM_REPO_HTTPS="https://github.com/luismayta/nvimrc.git"

# home
export HOME_CONFIG_PATH="${HOME}/.config"

# nvimrc
export NVIMRC_PACKAGE_NAME="nvimrc"
export NVIMRC_PATH="${HOME}/.nvimrc"
export NVIMRC_CUSTOM_PATH="${NVIMRC_PATH}/custom"

# nvim
export NVIM_CONFIG_PATH="${HOME_CONFIG_PATH}/nvim"
export NVIM_PACKAGE_NAME="nvim"
export NVIM_ROOT_PATH="${HOME}/.nvim"

export NVIM_LUA_PATH="${NVIM_CONFIG_PATH}/lua"
export NVIM_CUSTOM_PATH="${NVIM_LUA_PATH}/custom"

export NVIM_FILE_SETTINGS="${NVIMRC_PATH}/custom/init.lua"

[ -z "${EDITOR}" ] && export EDITOR="nvim"
