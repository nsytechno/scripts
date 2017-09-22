#!/bin/bash

# Clone this script in your ROM Repo using following commands.
# cd rom_repo
# curl https://raw.githubusercontent.com/Rpingat/legacy_script/master/script_build.sh > script_build.sh

# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/tacoscanterbury/ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G
export KBUILD_BUILD_USER=
export KBUILD_BUILD_HOST=StayXtreme

# clean
make clean && make clobber

# build
. build/envsetup.sh
lunch cm_$device-userdebug
make bacon -j8
