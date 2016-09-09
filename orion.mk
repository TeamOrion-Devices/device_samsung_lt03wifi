$(call inherit-product, device/samsung/n1awifi/full_n1awifi.mk)

# Inherit some common orion stuff.
$(call inherit-product, vendor/orion/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := orion_n1awifi
PRODUCT_DEVICE := n1awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P600 \
    PRODUCT_NAME=n1awifi \
    PRODUCT_DEVICE=n1awifi \
    TARGET_DEVICE=n1awifi

# Device maintainer
PRODUCT_BUILD_PROP_OVERRIDES := DEVICE_MAINTAINERS="Moshe Barash (mosimchah)"