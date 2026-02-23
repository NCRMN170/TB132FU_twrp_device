# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)


# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


# Inherit from TB132FU device
$(call inherit-product, device/lenovo/TB132FU/device.mk)

PRODUCT_DEVICE := TB132FU
PRODUCT_NAME := twrp_TB132FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB132FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
