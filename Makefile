ARCHS = arm64 arm64e
TARGET = iphone:clang:13.0:7.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoClutter
NoClutter_FILES = Tweak.xm
NoClutter_CFLAGS = -fobjc-arc
NoClutter_EXTRA_FRAMEWORKS += Cephei
NoClutter_PRIVATE_FRAMEWORKS = CoreTelephony

SUBPROJECTS += noclutterprefs

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk