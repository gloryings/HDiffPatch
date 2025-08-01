APP_PLATFORM := android-21

APP_CFLAGS += -s -Wno-error=format-security
APP_CFLAGS += -fvisibility=hidden -fvisibility-inlines-hidden
APP_CFLAGS += -ffunction-sections -fdata-sections

APP_LDFLAGS += -s -Wl,--gc-sections,--as-needed
APP_LDFLAGS += -Wl,-z,max-page-size=16384

APP_BUILD_SCRIPT := Android.mk

# 移除 armeabi，保留受支持 ABI
APP_ABI := armeabi-v7a arm64-v8a x86 x86_64
