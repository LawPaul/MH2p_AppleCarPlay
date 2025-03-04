#!/bin/ksh
# Copyright (c) 2025 LawPaul (https://github.com/LawPaul)
# This file is part of MH2p_CarPlay, licensed under CC BY-NC-SA 4.0.
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# See the LICENSE file in the project root for full license text.
# NOT FOR COMMERCIAL USE

[[ ! -e "/mnt/app" ]] && mount -t qnx6 /dev/mnanda0t177.1 /mnt/app

/mnt/app/armle/usr/bin/pc b:0x5F22:0x22AD:8.0 0    # Apple DIO
/mnt/app/armle/usr/bin/pc b:0x5F22:0x22AD:23.3 1   # Apple DIO Wireless