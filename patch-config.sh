#!/bin/bash
set -e

# how to extract source, apply patch, configure and build static bin

THTTPD_VERSION="2.25b"
if [ -d thttpd-$THTTPD_VERSION ] ; then
        rm -fr thttpd-$THTTPD_VERSION
fi
(tar zxf thttpd-$THTTPD_VERSION.tar.gz && cd thttpd-$THTTPD_VERSION && patch -p1 < ../patches/thttpd-$THTTPD_VERSION.patch && \
patch -p1 < ../patches/thttpd-$THTTPD_VERSION-access.patch && patch -p1 < ../patches/thttpd-$THTTPD_VERSION-noipv6.patch )

