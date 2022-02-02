#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# 添加软件源
echo 'src/gz kenzok8 https://op.dllkids.xyz/packages/mipsel_24kc' >>customfeeds.conf
echo 'src/gz openwrt_kiddin9 https://op.supes.top/packages/mipsel_24kc' >>customfeeds.conf
