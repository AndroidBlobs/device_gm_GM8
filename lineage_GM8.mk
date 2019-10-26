# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from GM8 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := gm
PRODUCT_DEVICE := GM8
PRODUCT_MANUFACTURER := gm
PRODUCT_NAME := lineage_GM8
PRODUCT_MODEL := GM 8

PRODUCT_GMS_CLIENTID_BASE := android-gm
TARGET_VENDOR := gm
TARGET_VENDOR_PRODUCT_NAME := GM8
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="GM8-user 10 QGM5.190530.015 5642755 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := GM/GM8/GM8_sprout:9/QGM5.190530.015/255:userdebug/release-keys
