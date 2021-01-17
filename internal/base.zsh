#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function nvim::internal::nvim::install {
    if ! type -p brew > /dev/null; then
        message_warning "${NVIM_MESSAGE_BREW}"
        return
    fi
    message_info "Installing ${NVIM_PACKAGE_NAME}"
    brew install nvim
    message_success "Installed ${NVIM_PACKAGE_NAME}"
}

function nvim::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${NVIM_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${NVIM_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${NVIM_PACKAGE_NAME}"
}
