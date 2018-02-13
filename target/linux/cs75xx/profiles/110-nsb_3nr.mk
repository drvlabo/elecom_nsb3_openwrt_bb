#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/NSB_3NR
  NAME:=Elecom NSB-3NR/3MS series NAS
  PACKAGES:= \
	uboot-envtools
endef

$(eval $(call Profile,NSB_3NR))
