# Inherit some common orion stuff.
$(call inherit-product, vendor/orion/config/common_full_tablet_wifionly.mk)

#Release name
PRODUCT_RELEASE_NAME :=SAMSUNG SM-P600
PRODUCT_MODEL :=n1awifi
PRODUCT_NAME :=orion_n1awifi
PRODUCT_MANUFACTURER :=samsung

$(call inherit-product, device/samsung/n1awifi/full_n1awifi.mk)

    # Device maintainer
PRODUCT_BUILD_PROP_OVERRIDES := DEVICE_MAINTAINERS="Moshe Barash (mosimchah)"
