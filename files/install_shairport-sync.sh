#!/bin/bash

set -e
set -o pipefail

# via https://github.com/mikebrady/shairport-sync
cd /usr/src/shairport-sync
autoreconf -i -f
./configure --sysconfdir=/etc --with-alsa --with-avahi --with-ssl=openssl --with-metadata --with-systemd --with-apple-alac
make
make install

