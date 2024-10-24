#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_pstar
PRODUCT_DEVICE := pstar
PRODUCT_MODEL := motorola edge 20 pro

PRODUCT_SYSTEM_NAME := pstar_retail

# Build info
BUILD_FINGERPRINT := "motorola/pstar_retail/pstar:13/T1RAS33.55-15-16-5/d9def9-6b8134:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 13 T1RAS33.55-15-16-5 d9def9-6b8134 release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
