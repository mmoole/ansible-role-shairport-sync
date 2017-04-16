#!/bin/bash

# via https://github.com/bobzoller/ansible-role-shairport-sync/blob/master/files/compile.sh
set -e
set -o pipefail

# via https://github.com/mikebrady/alac/README.md
cd /usr/src/alac

autoreconf -fi
./configure
make
make install
ldconfig -v

# dieser Teil ist noch unklar: betrifft pkg-config
# sudo pkg-config PKG_CHECK_MODULES([ALAC], [alac], [LIBS="${ALAC_LIBS} ${LIBS}"])
# PKG_CHECK_MODULES([ALAC], [alac], [LIBS="${ALAC_LIBS} ${LIBS}"])
