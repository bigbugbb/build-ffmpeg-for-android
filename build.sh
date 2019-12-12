#!/usr/bin/env bash
# Prerequisite: 
# download and install NDK13: https://dl.google.com/android/repository/android-ndk-r13b-darwin-x86_64.zip
# and export your ndk location as an env var with name 'NDK13':
#   export NDK13="$HOME/Library/Android/android-ndk-r13b"
# export ndk toolchain binaries:
#   TOOLCHAIN=$NDK13/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64
#   export PATH="$PATH:$TOOLCHAIN/bin:"
# restart your cmd

if [ -d "./x264" ] 
then
    echo "x264 source code exists." 
else
    echo "Grab x264..."
    git clone https://code.videolan.org/videolan/x264.git
fi

if [ -d "./libpng-android" ] 
then
    echo "libpng source code exists." 
else
    echo "Grab libpng..."
    git clone https://github.com/julienr/libpng-android.git
fi

if [ -d "./ffmpeg-3.3.9" ] 
then
    echo "ffmpeg-3.3.9 source code exists." 
else
    echo "Grab ffmpeg-3.3.9..."
    curl -O https://www.ffmpeg.org/releases/ffmpeg-3.3.9.tar.xz
    tar -xvf ffmpeg-3.3.9.tar.xz & rm ffmpeg-3.3.9.tar.xz
fi

./build_android_png.sh
./build_android_x264.sh
./build_android_ffmpeg.sh

echo "build ffmpeg for android done"

open ./build/android
