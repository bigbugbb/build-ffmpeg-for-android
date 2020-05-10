#!/usr/bin/env bash

CWD=`pwd`
SOURCE=$CWD/ffmpeg-3.3.9
OUTPUT_DIR=$CWD/build/android/libmp3lame
ARCHS="armeabi-v7a arm64-v8a"

pushd libmp3lame

$NDK13/ndk-build

for ARCH in $ARCHS
do
    TARGET_DIR=$OUTPUT_DIR/$ARCH/lib
    mkdir -p $TARGET_DIR
    mkdir -p $TARGET_DIR/../include/lame 
    cp ./obj/local/$ARCH/libmp3lame.a $TARGET_DIR/libmp3lame.a
    cp ./jni/include/lame.h $TARGET_DIR/../include/lame/lame.h
done

popd