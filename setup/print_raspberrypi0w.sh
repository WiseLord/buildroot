#!/bin/sh

BASE_DIR=$(dirname $(dirname $(realpath ${0})))
cd ${BASE_DIR}

make raspberrypi0w_defconfig

cat                     \
  setup/config/common   \
  setup/config/rpi      \
  setup/config/wifi     \
  setup/config/print    \
>> ".config"

cat << __EOF__ >> ".config"
# Rootfs configuration
BR2_ROOTFS_OVERLAY="setup/rootfs_overlay/wifi"
BR2_TARGET_ROOTFS_EXT2_SIZE="400M"
__EOF__

make olddefconfig
