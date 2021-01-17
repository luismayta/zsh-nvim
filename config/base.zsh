#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

export NVIM_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export NVIM_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export NVIM_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay branch:develop"
export NVIM_PACKAGE_NAME="nvim"

export NVIM_APPLICATION="$(command -v nvim)"
export NVIM_CONF_DIR=${HOME}/.config/nvim
export NVIM_FILE_SETTINGS="${NVIM_CONF_DIR}"/nvim.conf
export NVIM_THEMES_DIR=${NVIM_CONF_DIR}/themes
[ -z "${EDITOR}" ] && export EDITOR="nvim"
