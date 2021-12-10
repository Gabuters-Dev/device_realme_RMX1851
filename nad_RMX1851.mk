#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from RMX1851 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1851
PRODUCT_NAME := nad_RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 3 Pro
PRODUCT_MANUFACTURER := Realme
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

USE_PIXEL_CHARGING := true
NAD_BUILD_TYPE := OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.221005.002 9012097 release-keys"

BUILD_FINGERPRINT := "google/raven/raven:13/TP1A.221005.002/9012097:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1851" \
    TARGET_DEVICE="RMX1851"
