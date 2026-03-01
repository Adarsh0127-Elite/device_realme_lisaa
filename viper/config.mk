BUILD_PATH := device/realme/lisaa/viper

PRODUCT_SOONG_NAMESPACES += \
    device/realme/lisaa/viper

PRODUCT_PACKAGES += \
    ViPER4AndroidFX \
    libv4a_re

# Time to relax
RELAX_USES_LIBRARY_CHECK := true
