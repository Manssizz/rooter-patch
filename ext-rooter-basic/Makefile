#Owned by DairyMan@Whirlpool
# Porting to arm box device by Manssizz (c) 2023
#Copyright GNU act.
include $(TOPDIR)/rules.mk

PKG_NAME:=ext-rooter-basic
PKG_VERSION:=4.500
PKG_RELEASE:=1

PKG_MAINTAINER:=Created by DM/makefile by Cobia@whirlpool
include $(INCLUDE_DIR)/package.mk

define Package/ext-rooter-basic
  SECTION:=utils
  CATEGORY:=ROOter
  SUBMENU:=Basic Support
  DEPENDS:=+luci-compat +kmod-usb-net +kmod-usb-net-huawei-cdc-ncm +kmod-usb-net-cdc-ether +kmod-usb-acm \
	    +kmod-usb-net-qmi-wwan  +kmod-usb-net-rndis +kmod-usb-serial-qualcomm \
	    +kmod-usb-net-sierrawireless +kmod-usb-ohci +kmod-usb-serial +kmod-nls-utf8 \
	    +kmod-usb-serial-option +kmod-usb-serial-sierrawireless +luci-proto-3x \
	    +kmod-usb-uhci +kmod-usb2 +luci-proto-3g +iptables +rmbim +rqmi \
	    +usb-modeswitch +wireless-tools +ext-sms +ext-buttons +kmod-rt2800-usb 
  TITLE:=ROOter support for usbmodems
  PKGARCH:=all
endef

define Package/ext-rooter-basic/description
  Helper scripts to enable ROOter to manage usb modem interfaces
endef


define Build/Compile
endef

define Package/ext-rooter-basic/install
	$(CP) ./files/* $(1)/


endef

$(eval $(call BuildPackage,ext-rooter-basic))
