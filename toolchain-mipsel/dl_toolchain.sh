#!/bin/sh

DIR="toolchain-4.4.x"
DL_URL="https://github.com/896660689/builb--padavan/releases/download/padavan_4.4/"

dl() {
	[ -z "$1" ] && return

	echo "Download toolchain: $1"
	curl -O -L "${DL_URL}/$1" && \
	mkdir -p $DIR && \
	tar -xf "${1}" -C $DIR
}

if [ -d $DIR ]; then
	echo "$DIR exists!"
	exit
fi

ARCH="$(uname -m)"

case $ARCH in
	aarch64)
		dl "aarch64_mipsel-linux-uclibc.tar.xz"
		;;
	x86_64)
		dl "mipsel-linux-uclibc.tar.xz"
		;;
	*)
		echo "Unknown ARCH: $ARCH"
		exit 1
esac
