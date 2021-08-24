#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/umi

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_umi
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_umi

# Kernel
TARGET_KERNEL_CONFIG := vendor/umi_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/umi/BoardConfigVendor.mk
