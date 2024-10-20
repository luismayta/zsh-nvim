#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::install {
  message_info "Installing ${NVIMRC_PACKAGE_NAME}"

  env git clone --depth=1 "${NVIM_REPO_HTTPS}" --branch main "${NVIM_CONFIG_PATH}" || {
      message_warning "git clone of NVIMRC repo failed."
      return
  }

  message_success "Intalled ${NVIMRC_PACKAGE_NAME}"
}

function nvim::internal::upgrade {
  message_info "Upgrade ${NVIM_PACKAGE_NAME}"
  cd "${NVIM_CONFIG_PATH}" || exit && git pull && cd - || return
  message_success "Upgraded ${NVIM_PACKAGE_NAME}"
}

function nvim::internal::clean {
  message_info "start clean configurations nvim"
  rm -rf ~/.local/share/nvim
  rm -rf ~/.cache/nvim
  rm -rf ~/.local/state/nvim
  rm -rf ~/.local/share/nvim
  rm -rf ~/.config/nvim/plugin/packer_compiled.lua
  message_success "finish clean configurations nvim"
}