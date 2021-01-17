#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::main::factory {
    # shellcheck source=/dev/null
    source ${ZSH_NVIM_PATH}/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source ${ZSH_NVIM_PATH}/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source ${ZSH_NVIM_PATH}/internal/linux.zsh
      ;;
    esac
}

nvim::internal::main::factory

if ! type -p rsync > /dev/null; then nvim::internal::rsync::install; fi
if ! type -p nvim > /dev/null; then nvim::internal::nvim::install; fi
