#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common spark stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit some common ArcanaOS stuff.
ARCANA_MAINTAINER := AndreyDenikin
TARGET_CARRIER_SETTINGS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
COPY_APN_SYSTEM := true
USE_PIXEL_CHARGER_IMAGES := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
PREBUILT_LAWNCHAIR := true
WITH_GAPPS := true

# Fingerprint

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"
