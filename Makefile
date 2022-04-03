PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

export ARCHS = arm64 arm64e
export TARGET := iphone:clang:14.5
INSTALL_TARGET_PROCESSES = YouTube


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTNoUploadButton

YTNoUploadButton_FILES = Tweak.x
YTNoUploadButton_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
