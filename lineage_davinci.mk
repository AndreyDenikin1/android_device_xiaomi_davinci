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

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Build Lawnchair
#$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

# riceDroid Stuff with GApps
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SHIP_PREBUILT_APEX := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

# Google Mobile Services Support. (GAPPS)
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer Stuff
RICE_MAINTAINER := AndreyDenikin1
RICE_OFFICIAL := false

# Fingerprint
BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220705.003/8671607:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003 8671607 release-keys"

