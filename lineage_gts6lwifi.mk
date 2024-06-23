#
# Copyright (C) 2023 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts6lwifi device
$(call inherit-product, device/samsung/gts6lwifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts6lwifi
PRODUCT_NAME := lineage_gts6lwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T860
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gts6lwifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gts6lwifixx \
    PRIVATE_BUILD_DESC="gts6lwifixx-user 12 SP2A.220305.013 T860XXS5DWH1 release-keys"

BUILD_FINGERPRINT := "samsung/gts6lwifixx/gts6lwifi:11/RP1A.200720.012/T860XXS5DWH1:user/release-keys"
