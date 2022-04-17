#!/bin/bash

echo
echo "---- Libraries --------"

brew install \
freetype \
fdk-aac \
libass \
libtool \
libogg \
libvorbis \
opus \
sdl2 \
shtool \
texi2html \
x264 \
x265 \
nasm

echo
echo "---- Configuration --------"

PREFIX="$HOMEBREW_PREFIX"
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOMEBREW_PREFIX/lib

./configure --prefix="$PREFIX" \
--enable-sdl2 \
--enable-gpl \
--enable-nonfree \
--enable-libass \
--enable-libfreetype \
--enable-libfdk-aac \
--enable-libfreetype \
--enable-libvorbis \
--enable-libx264 \
--enable-libx265 \
--enable-libopus \
--enable-libwebp

echo
echo "Configuration Done."
echo
echo "Run 'make' to build."
