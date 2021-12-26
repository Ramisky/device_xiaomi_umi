#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Descendant stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from umi device
$(call inherit-product, device/xiaomi/umi/device.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

PRODUCT_NAME := aosp_umi
PRODUCT_DEVICE := umi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="umi-user 11 RKQ1.200826.002 V12.1.3.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/umi_global/umi:11/RKQ1.200826.002/V12.1.3.0.RJDMIXM:user/release-keys
