#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_NVIM_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_NVIM_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_NVIM_PATH}"/internal/linux.zsh
      ;;
    esac
}

nvim::internal::main::factory

if ! core::exists rsync > /dev/null; then core::install rsync; fi
if ! core::exists nvim > /dev/null; then core::install nvim; fi
[ -e "${NVIM_CONFIG_PATH}" ] || nvim::internal::install