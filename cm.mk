## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := stuttgart

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/stuttgart/device_stuttgart.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := stuttgart
PRODUCT_NAME := cm_stuttgart
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := stuttgart
PRODUCT_MANUFACTURER := lenovo