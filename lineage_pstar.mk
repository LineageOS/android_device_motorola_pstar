#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_pstar
PRODUCT_DEVICE := pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2125-4
PRODUCT_MANUFACTURER := motorola

# Build info
BUILD_FINGERPRINT := "motorola/pstar_retcn/pstar:12/S1RN32.55-16-1/cd155e-548707:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=pstar_retcn \
    PRIVATE_BUILD_DESC="pstar_retcn-user 12 S1RN32.55-16-1 cd155e-548707 release-keys"
