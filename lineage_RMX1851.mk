#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common Ricedroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX1851 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Boot Animation
SUSHI_BOOTANIMATION := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1851
PRODUCT_NAME := lineage_RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 3 Pro
PRODUCT_MANUFACTURER := Realme
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20190909.050401 release-keys"

BUILD_FINGERPRINT := "Realme/RMX1971/RMX1971:9/PKQ1.190101.001/1576816457:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1851" \
    TARGET_DEVICE="RMX1851"

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Pixel
WITH_GMS := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true
