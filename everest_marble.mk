#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common Everest configuration
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := marble
PRODUCT_MODEL := 23049PCD8G
PRODUCT_NAME := everest_marble
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 14 UKQ1.230804.001 V816.0.8.0.UMREUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMREUXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Everest stuff
WITH_GAPPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_INCLUDE_LAUNCHER3 := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_PIXEL_LAUNCHER := false

# Maintainer stuff
EVEREST_BUILD_TYPE := Official
EVEREST_MAINTAINER := SharmagRit
