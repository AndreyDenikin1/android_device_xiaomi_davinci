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

# Inherit some common xtended stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)


TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := cherish_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

TARGET_SUPPORTS_QUICK_TAP := true

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
TARGET_GAPPS_ARCH=arm64
IS_PHONE=true
HAS_FOD := true
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=AndreyDenikin1


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint

BUILD_FINGERPRINT := Xiaomi/davinci/davinci:11/RKQ1.200826.002/V12.5.2.0.RFJCNXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="davinci"
