# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n1awifi device
$(call inherit-product, device/samsung/n1awifi/device.mk)

# Inherit some common orion stuff.
$(call inherit-product, vendor/orion/config/common_full_tablet_wifionly.mk)

#Release name
PRODUCT_RELEASE_NAME :=SAMSUNG SM-P600
PRODUCT_MODEL :=n1awifi
PRODUCT_NAME :=orion_n1awifi
PRODUCT_MANUFACTURER :=samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P600 \
    PRODUCT_NAME=n1awifi \
    PRODUCT_DEVICE=n1awifi \
    TARGET_DEVICE=n1awifi

    # Device maintainer
PRODUCT_BUILD_PROP_OVERRIDES := DEVICE_MAINTAINERS="Moshe Barash (mosimchah)"