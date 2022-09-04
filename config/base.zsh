#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export NVIM_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export NVIM_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export NVIM_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay branch:develop"
export NVIM_PACKAGE_NAME="nvim"
export NVIMRC_PATH="${HOME}/.nvimrc"

export NVIM_FILE_SETTINGS="${NVIMRC_PATH}/custom/"
[ -z "${EDITOR}" ] && export EDITOR="nvim"
