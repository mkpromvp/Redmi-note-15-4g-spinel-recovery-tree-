#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from spinel device
$(call inherit-product, device/xiaomi/spinel/device.mk)

PRODUCT_DEVICE := spinel
PRODUCT_NAME := omni_spinel
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := spinel
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spinel-user 12 SP1A.210812.016 OS2.0.212.0.VPGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spinel/spinel:12/SP1A.210812.016/OS2.0.212.0.VPGMIXM:user/release-keys
