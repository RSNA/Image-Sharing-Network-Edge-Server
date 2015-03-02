#!/bin/bash

check_hash()
{
    echo "$2 *$3" | sha256sum -c - || (echo "$1 hash mismatch, exiting" && return 1)
}

MIRTHROOT=$1

mkdir -p $MIRTHROOT/patch_tmp
pushd $MIRTHROOT/patch_tmp

cp $MIRTHROOT/lib/xstream-1.2.2.jar $MIRTHROOT/patch_tmp/xstream-1.2.2.jar.bak
unzip -o $MIRTHROOT/lib/xstream-1.2.2.jar com/thoughtworks/xstream/core/JVM.class
check_hash "Source class file" \
	   "0b5fbf12505e87455138a4a3e1a510b45d9ce332d4305d1d920efbe754489211" \
	   "com/thoughtworks/xstream/core/JVM.class" || exit 1

echo "00006a7: 4f 72 61" | xxd -r -g 1 - com/thoughtworks/xstream/core/JVM.class

check_hash "Patched class file" \
	   "d0b0b210925672a7d1e32066a90e036a3d47eca8158ef8817b2e0dcb6c2b78bd" \
	   "com/thoughtworks/xstream/core/JVM.class" || exit 1

zip $MIRTHROOT/lib/xstream-1.2.2.jar com/thoughtworks/xstream/core/JVM.class
rm com/thoughtworks/xstream/core/JVM.class
popd
