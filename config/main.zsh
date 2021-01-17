#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::config::main::factory {
    # shellcheck source=/dev/null
    source ${ZSH_NVIM_PATH}/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source ${ZSH_NVIM_PATH}/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source ${ZSH_NVIM_PATH}/config/linux.zsh
      ;;
    esac
}

nvim::config::main::factory
