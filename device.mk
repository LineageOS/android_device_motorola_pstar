#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/motorola/sm8250-common/common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    FrameworksResPstar \
    SystemUIResPstar

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Init
PRODUCT_PACKAGES += \
    init.device.rc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.st \
    android.hardware.secure_element@1.2-service.st \
    nfc_nci.st21nfc.default

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.device.rc

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/motorola/pstar/pstar-vendor.mk)
