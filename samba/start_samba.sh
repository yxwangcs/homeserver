#!/bin/sh

# create correct symlink if external config is given
if [ -d /config ]; then
    if [ ! -f /config/smb.conf ]; then
        cp /etc/samba/smb.conf /config/smb.conf
    fi
    rm /etc/samba/smb.conf
    ln -s /config/smb.conf /etc/samba/smb.conf
fi

smbd