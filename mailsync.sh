#!/bin/bash
#**************************************************
#*This is free software; you can redistribute it  *
#*and/or modify it under the terms of the GNU     *
#*General Public License as published by the Free *
#*Software Foundation; either version 3 of the    *
#*License, or (at your option) any later version. *
#**************************************************
# Copyright (c) 2014 Lorenzo Novaro <novalore AT 19.coop>

#Set the wallet in use:
wallet=kdewallet
#Time format is a matter of taste
time=$(date +"%x %X")
#Set logfile
logfile=~/.mailsync/mailsync.log

#Let's start..
#Use flock to check that mailsync is not already running
#if it's running, wait for lock on /var/lock/.mailsync.lock (fd 200) for 9 seconds before dying
(
    /usr/bin/flock -x -w 9 200
    if [ "$?" != "0" ]; then
        echo "$time - Doing nothing: script already running" >> $logfile; exit 1;
    else
        if [ `/usr/bin/qdbus org.kde.kwalletd /modules/kwalletd org.kde.KWallet.isOpen $wallet` = true ]; then
            /usr/bin/offlineimap -o -u quiet && /usr/bin/notmuch new;
        else
            echo "$time - Doing nothing: kwallet not open..." >> $logfile; exit 1;
        fi
    fi
) 200>/var/lock/.mailsync.lock
exit 0;
