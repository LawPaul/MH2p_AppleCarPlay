#!/bin/ksh
# Copyright (c) 2025 LawPaul (https://github.com/LawPaul)
# This file is part of MH2p_CarPlay, licensed under CC BY-NC-SA 4.0.
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# See the LICENSE file in the project root for full license text.
# NOT FOR COMMERCIAL USE

cp -vrf /mnt/persist_new/fec $MOD_PATH/Backup
rm -vf /mnt/persist_new/fec/illegal.fecs
if [[ ! -e "/mnt/persist_new/fec/granted.fecs.bak" ]]; then
    echo "saving existing granted.fecs to granted.fecs.bak..."
    cp -vf /mnt/persist_new/fec/granted.fecs /mnt/persist_new/fec/granted.fecs.bak
else
    echo "granted.fecs.bak already exists; not overwriting"
fi
# remove (if not part of original FECs) CarPlay
fecswap -r 00060800 -f /mnt/persist_new/fec/granted.fecs