LOCAL_PATH := device/ONDA/octopus-ibt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/disp.ko:root/disp.ko \
    $(LOCAL_PATH)/recovery/root/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/recovery/root/nand.ko:root/nand.ko \
    $(LOCAL_PATH)/recovery/root/sunxi_tr.ko:root/sunxi_tr.ko \
    $(LOCAL_PATH)/recovery/root/sw-device.ko:root/sw-device.ko \
    $(LOCAL_PATH)/recovery/root/gt9xxf_ts.ko:root/gt9xxf_ts.ko \
    $(LOCAL_PATH)/recovery/root/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
    $(LOCAL_PATH)/recovery/root/sbin/init_partition.sh:root/sbin/init_partition.sh \
    $(LOCAL_PATH)/recovery/root/sbin/init_module.sh:root/sbin/init_module.sh

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
