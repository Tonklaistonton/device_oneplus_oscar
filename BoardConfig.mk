#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oscar

# Display
TARGET_SCREEN_DENSITY := 480
TARGET_BOOT_ANIMATION_RES := 1080

# OTA assert
TARGET_OTA_ASSERT_DEVICE := oscar,OP535DL1,RE54CBL1

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Include the proprietary files BoardConfig.
include vendor/oneplus/oscar/BoardConfigVendor.mk

#kernel Config
KERNEL_TOOLCHAIN := $(abspath .)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := /tmp/src/android/tc/bin
