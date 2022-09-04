#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::upgrade {
    message_info "Upgrade ${NVIM_PACKAGE_NAME}"
    cd "${NVIMRC_PATH}" || exit && git pull && cd - || return
    message_success "Upgraded ${NVIM_PACKAGE_NAME}"
}
