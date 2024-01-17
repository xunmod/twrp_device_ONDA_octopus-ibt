$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/ONDA/octopus-ibt/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := octopus-ibt
PRODUCT_NAME := omni_octopus-ibt
PRODUCT_BRAND := ONDA
PRODUCT_MODEL := V975s Core8
PRODUCT_MANUFACTURER := ONDA
