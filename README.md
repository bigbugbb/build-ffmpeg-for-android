
<div style="display:inline">
    <img src="https://icon-library.net/images/ffmpeg-icon/ffmpeg-icon-13.jpg" width="160"/> 
    <img src="https://cdn.vox-cdn.com/thumbor/V1lOFhoifgorg5qOnR8sPXyYvQ0=/0x0:2040x1560/1200x800/filters:focal(857x617:1183x943)/cdn.vox-cdn.com/uploads/chorus_image/image/65088839/Android_logo_stacked__RGB_.5.jpg" width="300"/> 
</div>

# build-ffmpeg-for-android
build ffmpeg 3 for android: `./build.sh`

# Prerequisite: 
1. download and install [NDK-r13b](https://dl.google.com/android/repository/android-ndk-r13b-darwin-x86_64.zip)
2. export your ndk install path as an environment var named **NDK13**:\
   `export NDK13="$HOME/Library/Android/android-ndk-r13b`
3. export ndk toolchain binaries:\
   `TOOLCHAIN=$NDK13/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64`\
   `export PATH="$PATH:$TOOLCHAIN/bin:`
4. restart your command line tool.
