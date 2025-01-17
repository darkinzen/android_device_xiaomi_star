#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/star

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk


BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := star

# OTA assert
TARGET_OTA_ASSERT_DEVICE := star|mars

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG += vendor/star-qgki_defconfig
BOARD_RAMDISK_USE_LZ4 := true
KERNEL_LD := LD=ld.lld
KERNEL_FULL_LLVM := true

# Kernel modules
BOOT_KERNEL_MODULES := \
    hwid.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 165

# Include proprietary files
include vendor/xiaomi/star/BoardConfigVendor.mk
