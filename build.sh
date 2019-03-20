#!/bin/bash
export ARCH=arm64 && export SUBARCH=arm64
export CROSS_COMPILE=~/Toolchain/bin/aarch64-linux-gnu-
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
make O=out clean
make O=out mrproper
make O=out opympian_markw_defconfig
make O=out -j8
mv out/arch/arm64/boot/Image.gz-dtb zip/
cd zip
zip -r9 olympiankernel_zeus-$(date +"%Y-%m-%d").zip *
gdrive upload olympiankernel_zeus*.zip
rm -rf Image.gz-dtb *.zip
echo " ______     __         __  __     __    __     ______   __     ______     __   __        __  __     ______     ______     __   __     ______     __ "
echo "/\  __ \   /\ \       /\ \_\ \   /\ "-./  \   /\  == \ /\ \   /\  __ \   /\ "-.\ \      /\ \/ /    /\  ___\   /\  == \   /\ "-.\ \   /\  ___\   /\ \       "
echo "\ \ \/\ \  \ \ \____  \ \____ \  \ \ \-./\ \  \ \  _-/ \ \ \  \ \  __ \  \ \ \-.  \     \ \  _"-.  \ \  __\   \ \  __<   \ \ \-.  \  \ \  __\   \ \ \____  "
echo " \ \_____\  \ \_____\  \/\_____\  \ \_\ \ \_\  \ \_\    \ \_\  \ \_\ \_\  \ \_\\"\_\     \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\\"\_\  \ \_____\  \ \_____\ "
echo "  \/_____/   \/_____/   \/_____/   \/_/  \/_/   \/_/     \/_/   \/_/\/_/   \/_/ \/_/      \/_/\/_/   \/_____/   \/_/ /_/   \/_/ \/_/   \/_____/   \/_____/ "
echo "                                    Olympian kernel Zeus version by DarkAngelGR                                        "
