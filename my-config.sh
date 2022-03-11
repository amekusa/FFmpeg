#!/bin/bash

PREFIX="$HOMEBREW_PREFIX"
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOMEBREW_PREFIX/lib

./configure --prefix="$PREFIX" \
--enable-sdl2 \
--enable-gpl \
--enable-nonfree \
--enable-libass \
--enable-libfdk-aac \
--enable-libfreetype \
--enable-libvorbis \
--enable-libx264 \
--enable-libx265 \
--enable-libopus \
--enable-libwebp
