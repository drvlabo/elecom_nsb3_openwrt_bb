#
# Copyright (C) 2013-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=cs75xx
BOARDNAME:=Cortina CS75x2
FEATURES:=fpu gpio usb squashfs targz nand ubifs
CPU_TYPE:=cortex-a9
CPU_SUBTYPE:=neon
MAINTAINER:=Luka Perkov <luka@openwrt.org>

KERNEL_PATCHVER:=3.4

include $(INCLUDE_DIR)/target.mk

#KERNELNAME:="zImage dtbs"
KERNELNAME:="zImage"

$(eval $(call BuildTarget))
