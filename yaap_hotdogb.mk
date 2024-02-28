#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common YAAP stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := yaap_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7T
PRODUCT_SYSTEM_DEVICE := OnePlus7T

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7T/OnePlus7T:12/SKQ1.211113.001/Q.202303230244:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7T \
    TARGET_PRODUCT=OnePlus7T \
    PRIVATE_BUILD_DESC="OnePlus7T-user 12 SKQ1.211113.001 Q.202303230244 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
