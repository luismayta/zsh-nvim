#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install nvim for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_NVIM_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_NVIM_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_NVIM_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_NVIM_PATH}"/pkg/main.zsh
