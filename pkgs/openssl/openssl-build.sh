#! /bin/sh

export PATH=/bin:/usr/bin

tar xvfz $src || exit 1
cd openssl-* || exit 1
./config --prefix=$out shared || exit 1
make || exit 1
mkdir $out || exit 1
make install || exit 1
