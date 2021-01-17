#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::sync {
    message_info "nvim sync conf for ${NVIM_PACKAGE_NAME}"
    rsync -avzh --progress "${ZSH_NVIM_PATH}/conf/" "${NVIM_CONF_DIR}/"
    message_success "sync for ${NVIM_PACKAGE_NAME}"
}

function nvim::install {
    message_info "Installing nvim"
    nvim::internal::nvim::install
}
