# Copyright (C) 2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-modem
LUCI_TITLE:=LuCI support for Modem
LUCI_PKGARCH:=all
PKG_VERSION:=20231207-1.0
PKG_LICENSE:=GPLv3
PKG_LINCESE_FILES:=LICENSE
PKF_MAINTAINER:=siriling <siriling@qq.com>
LUCI_DEPENDS:=+luci-compat +kmod-usb-net  +kmod-usb-net-cdc-ether +kmod-usb-acm +kmod-usb-net-huawei-cdc-ncm \
		+kmod-usb-net-qmi-wwan  +kmod-usb-net-rndis +kmod-usb-serial-qualcomm \
		+kmod-usb-net-sierrawireless +kmod-usb-ohci +kmod-usb-serial +kmod-nls-utf8 \
                +kmod-usb-serial-option +kmod-usb-serial-sierrawireless +luci-proto-3x \
	        +kmod-usb-uhci +kmod-usb2 +luci-proto-3g +iptables \
	        +usb-modeswitch +kmod-rt2800-usb \
		+kmod-usb-serial-option +kmod-usb-wdm \
		+kmod-usb2 +kmod-usb3 \
		+kmod-usb-net-cdc-mbim \
		+usbutils \
		+kmod-qmi_wwan_q \
		+sms-tool +jq +grep

define Package/luci-app-modem/conffiles
/etc/config/modem
endef

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	Version: $(PKG_VERSION)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
