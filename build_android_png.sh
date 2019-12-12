#!/usr/bin/env bash

CWD=`pwd`
SOURCE=$CWD/ffmpeg-3.3.9
OUTPUT_DIR=$CWD/build/android/png
ARCHS="armeabi-v7a arm64-v8a"

pushd libpng-android

# ./build.sh

for ARCH in $ARCHS
do
    TARGET_DIR=$OUTPUT_DIR/$ARCH/lib
    mkdir -p $TARGET_DIR
    cp ./obj/local/$ARCH/libpng.a $TARGET_DIR/libpng.a
done

popd