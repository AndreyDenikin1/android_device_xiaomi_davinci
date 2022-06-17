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

# Inherit some common Nameless stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product-if-exists, vendor/gapps/gms_mini.mk)
$(call inherit-product-if-exists, vendor/apps/GoogleCamera/config.mk)

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

# NAD Flags
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
CUSTOM_BUILD_TYPE := Unofficial
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
#USE_LAWNCHAIR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
#USE_AOSP_CLOCK := true
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Maintainer
RICE_MAINTAINER := AndreyDenikin1

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#PRODUCT_CHARACTERISTICS := nosdcard
