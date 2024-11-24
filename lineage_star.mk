#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from star device
$(call inherit-product, device/xiaomi/star/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := star
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2102K1AC
PRODUCT_NAME := lineage_star

PRODUCT_SYSTEM_NAME := star_global
PRODUCT_SYSTEM_DEVICE := star

# For RisingOS Build
PRODUCT_BUILD_PROP_OVERRIDES += \
	RisingMaintainer="Darkinzen"

RISING_MAINTAINER="Darkinzen" #Display Name on bash
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true

# extra add-ons for core GMS builds
# List of add-ons
 PRODUCT_PACKAGES += \
    Photos \
    AiWallpapers \
    WallpaperEmojiPrebuilt \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="star_global-user 14 UKQ1.231207.002 V816.0.6.0.UKAMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/star_global/star:14/UKQ1.231207.002/V816.0.6.0.UKAMIXM:user/release-keys
