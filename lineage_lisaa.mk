#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/realme/lisaa/device.mk)

# Inherit from the AxionAOSP configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := lisaa
PRODUCT_MANUFACTURER := Realme
PRODUCT_MODEL := RMX3563
PRODUCT_NAME := lineage_lisaa

PRODUCT_SYSTEM_DEVICE := RMX3563
PRODUCT_SYSTEM_NAME := RMX3563

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 14 UKQ1.230924.001 1759992137515 release-keys" \
    BuildFingerprint=realme/RMX3563/RED8BEL1:12/SP1A.210812.016/1760168284353:user/release-keys \
    DeviceName=RED8BEL1 \
    DeviceProduct=RMX3563 \
    SystemDevice=RED8BEL1 \
    SystemName=RMX3563

# Axion Stuff
AXION_CAMERA_REAR_INFO := 50MP,8MP,2MP
AXION_CAMERA_FRONT_INFO := 16MP
AXION_MAINTAINER := adarsh_8300u
AXION_PROCESSOR := Dimensity_8100

# Axion Optional Flags
TARGET_ENABLE_BLUR := true

# Performance Features
BYPASS_CHARGE_SUPPORTED := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# ScrollOptimizer
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.perf.scroll_opt=true \

persist.sys.perf.scroll_opt.heavy_app=2

# Prebuilt Apps
TARGET_INCLUDES_LOS_PREBUILTS := true

# Flashlight strength
TORCH_STR_SUPPORTED := true

# Doze fix
TARGET_NEEDS_DOZE_FIX := true
