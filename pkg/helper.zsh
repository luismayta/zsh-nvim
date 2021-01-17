#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# editnvim edit settings for nvim
function editnvim {
    if [ -z "${EDITOR}" ]; then
        message_warning "it's neccesary the var EDITOR"
        return
    fi
    "${EDITOR}" "${NVIM_FILE_SETTINGS}"
}
