#!/bin/sh

set -e

version=$( (
             dpkg-parsechangelog 2>/dev/null || echo 'Version: 6.9'
         ) | awk '/^Version: / {print $2}' | sed -e 's,-.*$,,' )

tar --exclude=debian \
    --exclude=.git --exclude=.pc --exclude=.svn \
    --exclude=rollbackBackupDirectory \
    --exclude='ida.key' \
    --exclude='libX11-xcb.so.1' \
    --transform 's,^\./,idapro-'$version'/,' \
    -cJvf ../idapro_${version}.orig.tar.xz .
