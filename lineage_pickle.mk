#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/pickle/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := pickle
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_MODEL := CPH2423
PRODUCT_NAME := lineage_pickle

PRODUCT_SYSTEM_DEVICE := CPH2423
PRODUCT_SYSTEM_NAME := CPH2423

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1676518158691 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2411/OP5566L1:13/TP1A.220905.001/S.e4ee63_1:user/release-keys
