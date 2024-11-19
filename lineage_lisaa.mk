#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/realme/lisaa/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := lisaa
PRODUCT_MANUFACTURER := Realme
PRODUCT_MODEL := RMX3561
PRODUCT_NAME := lineage_lisaa

PRODUCT_SYSTEM_DEVICE := RMX3561
PRODUCT_SYSTEM_NAME := RMX3561

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 14 UKQ1.230924.001 1727668240847 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3561/RE5489:12/SP1A.210812.016/S.202208240000:user/release-keys
