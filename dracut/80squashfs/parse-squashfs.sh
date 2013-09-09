#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

if [ "${root%%:*}" = "squashfs" ]; then
    rootok=1
    mount -t squashfs newroot.squashfs $NEWROOT && { [ -e /dev/root ] || ln -s null /dev/root ; }
fi