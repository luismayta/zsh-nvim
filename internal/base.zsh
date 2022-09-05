#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::nvchad::install {
  message_info "Installing ${NVCHAD_PACKAGE_NAME}"

  env git clone --depth=1 "${NVCHAD_REPOSITORY_URL}" --branch main "${NVIM_CONFIG_PATH}" || {
      message_warning "git clone of ${NVCHAD_PACKAGE_NAME} repo failed."
      return
  }

  message_success "Intalled ${NVCHAD_PACKAGE_NAME}"
}

function nvim::internal::install {
  message_info "Installing ${NVIMRC_PACKAGE_NAME}"

  env git clone --depth=1 "${NVIM_REPO_HTTPS}" --branch main "${NVIMRC_PATH}" || {
      message_warning "git clone of NVIMRC repo failed."
      return
  }

  message_success "Intalled ${NVIMRC_PACKAGE_NAME}"
}

function nvim::internal::upgrade {
  message_info "Upgrade ${NVIM_PACKAGE_NAME}"
  cd "${NVIMRC_PATH}" || exit && git pull && cd - || return
  message_success "Upgraded ${NVIM_PACKAGE_NAME}"
}

function nvim::internal::load {
  ln -s "${NVIMRC_CUSTOM_PATH}" "${NVIM_CUSTOM_PATH}"
}
